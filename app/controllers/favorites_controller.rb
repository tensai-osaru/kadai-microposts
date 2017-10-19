class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    # micropst_id => 5
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:succsess] = "Favoriteしました"
    redirect_to micropost.user
    # redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = "Unfavoriteしました"
    redirect_to micropost.user
  end
end

