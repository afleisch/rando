class UrlsController < ApplicationController

 def index 
   @urls = Url.all
   render :index
 end

 def new
  @url = Url.new
 end
end