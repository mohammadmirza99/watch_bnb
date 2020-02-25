class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.find(safe_params)
    @request.watch = Watch.find(params[:watch_id])
    @request.user = current_user


    if @request.save
      redirect_to user_path(current_user)
    else
      render :new
    end

  end

  def safe_params
    params.require(:request).permit(:date_start, :date_end)
  end
end
