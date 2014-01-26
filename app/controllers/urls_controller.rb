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

end