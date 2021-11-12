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
  #省略
end
