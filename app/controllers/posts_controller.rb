class PostsController < ApplicationController

  def get_post
    Post.find(params[:id])
  end

  def new

  end

  def index
    @post = Post.new
    @posts = Post.all

  end
  def create
    puts params
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post was successful!"
      redirect_to '/'
    else
      flash[:alert] = "There was an error creating your post :("
        redirect_to '/'
    end
  end











end
