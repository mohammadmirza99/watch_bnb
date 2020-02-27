class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @watch = Watch.find(params[:watch_id])
    @reviews = Review.all
  end

  def new
    @watch = Watch.find(params[:watch_id])
  end
end
