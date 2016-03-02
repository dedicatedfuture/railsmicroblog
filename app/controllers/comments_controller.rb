class CommentsController < ApplicationController

	def new
		@comment_new = Comment.new
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

  def edit
  	@comment = get_comment
  end

  def update
  	@comment = get_post
    @comment.update(params[:comment])
    if @comment.save
      flash[:notice] = "Your comment was successfully updated"
      redirect_to '/'
    else
      flash[:alert] = "There was an error changing your comment."
      redirect_to '/'
    end
  end

  def destroy
  	@comment = get_comment
    Comment.destroy(@comment)
    flash[:notice] = "Your comment has been deleted!"
    redirect_to '/'
  end



end
