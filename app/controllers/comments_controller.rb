class CommentsController < ApplicationController

	def get_comment
    Comment.find(params[:id])
  end


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

  def edit
  	@comment = get_comment
  end

  def update
  	
  end

  def destroy
  end



end
