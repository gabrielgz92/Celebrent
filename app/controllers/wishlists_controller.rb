class WishlistsController < ApplicationController
  before_action :set_celebrity, only: [:create, :destroy]
  before_action :set_wishlist, only: :destroy
  def index
    @wishlists = current_user.wishlists
  end

  def create
    @wishlist = Wishlist.new
    @wishlist.celebrity = @celebrity
    @wishlist.user = current_user
    @wishlist.save

    redirect_to celebrity_path(@celebrity)
  end

  def destroy
    @wishlist.destroy
  end

  private

  def set_celebrity
    @celebrity = Celebrity.find(params[:celebrity_id])
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end
end
