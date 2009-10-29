class FlickrController < ApplicationController
  require 'flickraw'

  def index
    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  
  def photo
    @pid = params[:id]
		@pinfo = flickr.photos.getInfo :photo_id => @pid
		getSizes = flickr.photos.getSizes :photo_id => @pid
	  @psizes = getSizes.find{|m| m.label == "Medium"}
	  
    respond_to do |format|
      format.html
      format.xml
    end
  end
  
  def home
		photos = flickr.photos.search(:user_id => "13827925@N00")
		random = photos[rand(photos.size)]
		@pid = random.id
		@pinfo = flickr.photos.getInfo :secret => random.secret, :photo_id => @pid
		getSizes = flickr.photos.getSizes :photo_id => @pid
	  @psizes = getSizes.find{|m| m.label == "Medium"}
		    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  

end
