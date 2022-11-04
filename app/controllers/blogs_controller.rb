class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    if params[:back]
      @blog = Blog.new(post_params)
    else
      @blog = Blog.new
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    redirect_to blogs_url, notice: "ブログを投稿しました"
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice:"ブログを削除しました！"
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end
end
