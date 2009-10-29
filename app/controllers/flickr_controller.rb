class FlickrController < ApplicationController
  require 'flickraw'
  @@flickr_id = "13827925@N00"


  def index
    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  
  def photo
    @pid = params[:id]
    begin
		  @pinfo = flickr.photos.getInfo :photo_id => @pid
    rescue => e
      @error = true;
      @pid = flickr.photos.search(:user_id => @@flickr_id).rand.id
      @pinfo = flickr.photos.getInfo :photo_id => @pid
    end
    @psize = flickr.photos.getSizes(:photo_id => @pid).find{|m| m.label == "Medium"}
	  
    respond_to do |format|
      format.html
      format.xml
    end
  end
  
  def home

    @pid = flickr.photos.search(:user_id => @@flickr_id).rand.id
		@pinfo = flickr.photos.getInfo(:photo_id => @pid)
    @psize = flickr.photos.getSizes(:photo_id => @pid).find{|m| m.label == "Medium"}
		    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  

end
