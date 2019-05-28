class CelebrtiesController < ApplicationController
  def index
    @celebrties = Celebrity.all
  end

  def show
    @celebrity = Celebrity.find(params[:id])
  end
end
