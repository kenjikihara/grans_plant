class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end
  
  def new
    if params[:back]
      @post = Post.new(post_params)
      # @post.image.retrieve_from_cache! params[:cache][:image]
    else
      @post = Post.new
    end
  end
  
  def confirm
    @post = Post.new(post_params)
  end
  
  def show
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "作成しました！"
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path, notice:"削除しました！"
  end
  
  
  private
  
  def post_params
    params.require(:post).permit(:grans_name, :grans_image, :plants_name, :plants_image, :transfer_complete, :image_cache)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
end