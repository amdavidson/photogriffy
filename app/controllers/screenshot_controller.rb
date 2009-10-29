class ScreenshotController < ApplicationController

  def index 
    @screenshots = "x"
    
    respond_to do |format|
      format.html
      format.xml
    end
  end

  def single
    @fpath = "screenshots/" + params[:filename]
    fabsolute = RAILS_ROOT + "/public/images/screenshots/" + params[:filename]
    @fsize = IO.read(fabsolute)[0x10..0x18].unpack('NN')
    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  

end
