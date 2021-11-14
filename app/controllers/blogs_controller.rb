class BlogsController < ApplicationController
  #省略
  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id #現在ログインしているuserのidを、blogのuser_idカラムに挿入する
  #省略
  end
  #省略
  def confirm
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id #現在ログインしているuserのidを、blogのuser_idカラムに挿入する
    render :new if @blog.invalid?
  end
  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
end
