class CommentsController < ApplicationController

	def new
    @post_comment = Post.find_by_id(params[:id])
    # @ = Order.find_by_id(params[:id])
		@comment_new = Comment.new
	end

	def create
    puts params
    @post_comment = Post.find_by_id(params[:id])
    @comment = Comment.new(comment_params)
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


   private

   def comment_params
        params.require(:comment).permit(:user_id, :post_id, :etc)
   end


end
