class WatchesController < ApplicationController


  def index

    @watches = Watch.all
    # @watches = policy_scope(Watch)
  end

  def show
    @watch = Watch.find(params[:id])
    # authorize @watch
  end

  def new
    @watch = Watch.new
    # authorize @watch
  end

  def create
    @watch = Watch.new(safe_params)
    # authorize @watch
    @watch.user = current_user
    if @watch.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @watch = Watch.find(params[:id])
  end

  def update
    @watch = Watch.find(params[:id])
    @watch.update(safe_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @watch = Watch.find(params[:id])
    @watch.destroy
    redirect_to watches_path
  end

  private

  def safe_params
    params.require(:watch).permit(:brand, :model, :price, :material, :image_url)
  end
end
