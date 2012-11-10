class SessionsController < ApplicationController
	def create
	 	auth = request.env['omniauth.auth']
	 	puts auth.to_yaml
	 	puts auth["user_info"]
	 	user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
	 	session[:user_id] = user.id
	 	redirect_to '/streams', :notice => "Signed In!"
	end
end
