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
	redirect_to "/urls"
end
end

end