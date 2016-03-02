class UsersController < ApplicationController

	def get_user
		User.find(params[:id])
	end

	def current_user
   session[:current_user_id] = @user.id

  end

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

	def show
		@user = get_user
	end

	def edit
		@user = get_user
	end

	def update
		@user = get_user
		@user.update(params[:user])
		if @user.save
			flash[:notice] = "Your changes were saved"
			redirect_to '/'
		else
			flash[:alert] = "There was a problem saving your changes"
			redirect_to '/'
		end
	end

	def destroy
		@user = get_user
		User.destroy(@user)
		flash[:notice] = "Your account has been deleted"
		redirect_to '/'
	end


end
