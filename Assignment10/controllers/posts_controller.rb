class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :search]
  
  def index
    @posts = Post.all
  end
  
  def new 
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :index
    else
      render :new
    end
  end
  
  def show
    set_post
  end
  
  def edit
    set_post
  end
  
  def update
    if @post.update(post_params)
      redirect_to action: :index
    else
      render :edit
    end
  end
  
  def destroy
    set_post
    @post.destroy
    redirect_to action: :index
  end
  
  private
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title,:body,:user_id)
  end
end
