class ScreenshotController < ApplicationController

  def index 
    @screenshots = "x"
    
    respond_to do |format|
      format.html
      format.xml
    end
  end

  def single
    @screenshot = "x"
    
    respond_to do |format|
      format.html
      format.xml
    end
  end
  

end
