class WatchesController < ApplicationController


  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(safe_params)
    @watch.user = current_user
    if @watch.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  private

  def safe_params
    params.require(:watch).permit(:brand, :model, :price, :material)
  end
end
