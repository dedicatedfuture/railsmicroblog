class PostsController < ApplicationController

  def new

  end

  def index
    @post_new = Post.new
    @posts = Post.all.includes(:comments)
    @comment_new = Comment.new
    @comments = Comment.all
    @users = User.all
  end


  def create

    puts params
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was successful!"
      redirect_to '/'
    else
      flash[:alert] = "There was an error creating your post :("
        redirect_to '/'
    end
  end


  def edit
    @post = get_post
    if current_user.id != @post.user.id
        redirect_to '/'
    end

  end

  def update
    @post = get_post
    @post.update(post_params)
    if @post.save
      flash[:notice] = "Your post were saved"
      redirect_to '/'
    else
      flash[:alert] = "There was a problem saving your post"
      redirect_to '/'
    end
  end


  def destroy
    @post = get_post
    if current_user.id == @post.user.id
      Post.destroy(@post)
      flash[:notice] = "Your post has been deleted!"

    end
    redirect_to '/'
  end

  private
<<<<<<< HEAD
=======

  def post_params
    params.require(:post).permit(:title, :body, :user_id, :image)
  end
>>>>>>> 8587c86d6b29a5ae65354aefe2315556534ad936

  def post_params
    params.require(:post).permit(:user_id, :title, :body)
  end



end
