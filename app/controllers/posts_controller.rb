class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  
  def show
   @post = Post.find(params[:id])
  end

  
  def new
    @post = Post.new
    authorize! :create, Post#, message: "You need to be a member to create a new post."
  end

  def edit
    @post = Post.find(params[:id])
  end

 
  def create
    @post = Post.new(params[:post])
      if @post.save
        flash[:notice] = "Post created successfully, you're awesome Forrest."
        redirect_to @post
      else
        flash[:error] = "Something went wrong, better look into it."
        render :new
      end
  end

  
  def update
    @post = Post.find(params[:id])
      if @post.update_attributes(params[:post])
         redirect_to @post, notice: "Post was successfully updated, good job Forrest."
      else
        flash[:error] = "Something went wrong, better loon into it."
        render :edit 
      end
  end

  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_url
  end
end
