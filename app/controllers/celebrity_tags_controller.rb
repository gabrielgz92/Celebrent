class CelebrityTagsController < ApplicationController
  before_action :set_celebrity

  def new
    @celebrity_tag = CelebrityTag.new
  end

  def create
    names = params[:celebrity_tag][:tag].reject(&:empty?).map(&:downcase)
    names.each do |name|
      tag = Tag.find_or_create_by(name: name)
      CelebrityTag.create(celebrity: @celebrity, tag: tag)
    end
    redirect_to @celebrity
  end

  private

  def set_celebrity
    @celebrity = Celebrity.find(params[:celebrity_id])
  end
end
