class PostsController < ApplicationController
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
  
  def show
  end
  
  def create
    Post.create(post_params)
    redirect_to new_post_path
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
  
  def post_params
    params.require(:post).permit(:grans_name, :grans_image, :plants_name, :plants_image, :transfer_complete, :image_cache)
  end
end