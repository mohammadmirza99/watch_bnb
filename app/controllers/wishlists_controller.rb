#Changed the name to Wishlist Controller
class WishlistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @watch = Watch.find(params[:watch_id])
    @reviews = Review.all
  end

  def new
    @watch = Watch.find(params[:watch_id])
  end

  # Added Create method for wishlist.
  def create
    @watch = Watch.find(params[:watch_id])
    @user = current_user
    @wishlist = Wishlist.new
    @wishlist.watch = @watch
    @wishlist.user = @user

    @wishlist.save
    # render /app/views/wishlists/create.js
  end
end
