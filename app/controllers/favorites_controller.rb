class FavoritesController < ApplicationController
      #省略
  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
  #省略
end
end
