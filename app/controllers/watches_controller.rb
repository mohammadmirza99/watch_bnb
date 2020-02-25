class WatchesController < ApplicationController


  def index
    # @watches = Watch.all
  end

  def show
    # @watch = Watch.find(params[:id])
  end

  def new
    # @watch = Watch.new
  end

  def create
    # @watch = Watch.new(safe_params)

    #   if @watch.save
    #   else
    #     render :new
    #   end
  end

  private

  def safe_params
    # params.require(:watch).permit(:brand, :model, :price, :material)
  end
end
