class WishlistsController < ApplicationController
  before_action :set_celebrity, only: [:create, :destroy]
  def index
    @wishlists = current_user.wishlists
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.celebrity = @celebrity
    @wishlist.user = current_user
    @wishlist.save
  end

  def destroy
    @wishlist.destroy
  end

  private

  def wishlist_params
    params.require(:wishlist).permit(:user_id, :celebrity_id)
  end

  def set_celebrity
    @celebrity = Celebrity.find(params[:celebrity_id])
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end
end
