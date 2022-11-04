class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def create
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    redirect_to blogs_url, notice: "ブログを投稿しました"
  end

  def update
  end

  def destroy
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end
end
