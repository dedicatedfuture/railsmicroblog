class UsersController < ApplicationController


	def index
	end

	def new
		@user = User.new
	end

	def create

		puts "****************************************************************************************************************"
		puts params
		@user = User.new(user_params)
		if @user.save
			log_in @user
			flash[:notice] = "User was successfully created"
			redirect_to '/'
		else
			flash[:alert] = "There was an error creating your user"
			redirect_to '/users/new'
		end
	end

	def show
		@user = get_user
		@users_posts = @user.posts
	end

	def edit
		@user = current_user
	end

	def update
		@user = get_user
		@user.update(user_params)
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

	private


	def user_params
		params.require(:user).permit(:fname, :lname, :email, :pword, :description)
	end



end
