class UrlsController < ApplicationController

 def index 
 @urls = Url.all
  render :index

 end


end
