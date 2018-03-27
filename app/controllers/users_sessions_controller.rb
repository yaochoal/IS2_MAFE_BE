class UsersSessionsController < ApplicationController
	def new
	    @users = Users.new

	end
	def create
	    if @users = login(params[:username],params[:password])
	       redirect_back_or_to(post_path, message: "Bien logeado")
	    else
		flash.now.[:alert] = "Fallo en login"
		render action: :new
	    end
	end
	def destroy
	    logout
	    redirect_to(:users, message: "Logged out")
	end
end