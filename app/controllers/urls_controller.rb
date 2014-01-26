class UrlsController < ApplicationController

 def index 
   @urls = Url.all
   render :index
 end

 def new
  @url = Url.new
 end


 def create
 	@random_string = SecureRandom.urlsafe_base64(10)
	new_url= params.require(:url).permit(:link)
	url = Url.create(new_url) do |u|
		u.random_string = @random_string
   end
   redirect_to "/urls/#{url.id}"
 end

 def show
	id = params[:id]
	@url = Url.find(id)
	render :show
 end

def redirect
	random_string = params[:random_string]
	url = Url.find_by random_string: random_string
	redirect_to url.link, status: 301

end

end