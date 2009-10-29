class InfoController < ApplicationController

  def about
    respond_to do |format|
      format.html
      format.xml
    end
  end
end
