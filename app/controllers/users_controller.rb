class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
	end

	def create
		puts "****************************************************************************************************************"
		puts params
		@user = User.new(params[:user])
		if @user.save 
			flash[:notice] = "User was successfully created"
			redirect_to '/'
		else
			flash[:alert] = "There was an error creating your user"
			redirect_to '/users/new'
		end
	end


end
