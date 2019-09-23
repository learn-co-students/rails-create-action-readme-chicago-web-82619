class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.title = "Title Goes Here"
    @post.description = "Desc goes here..."
    @post.save
    redirect_to post_path(@post)
  end

  # add create method here
end
