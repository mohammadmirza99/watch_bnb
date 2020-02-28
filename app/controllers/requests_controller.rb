class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end
  def new
    @watch = Watch.find(params[:watch_id])
    @request = Request.new
  end

  def create
    @watch = Watch.find(params[:watch_id])
    @request = Request.new(safe_params)
    @request.status = "pending"
    @request.watch = @watch
    @request.user = current_user

    if @request.save
      redirect_to requests_path
    else
      render :new
    end
  end

  def update
    @request = Request.find(params[:id])
    @request.update({status: "accepted"})

    redirect_to user_path(current_user)

  end

  def safe_params
    params.require(:request).permit(:date_start, :date_end)
  end
end
