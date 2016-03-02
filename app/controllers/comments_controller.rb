class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
    puts params
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment was successful!"
      redirect_to '/'
    else
      flash[:alert] = "There was an error creating your comment:("
        redirect_to '/'
    end
  end




end
