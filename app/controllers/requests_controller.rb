class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = request.find(safe_params)
    @request.watch = watch

    if @request.save
      redirect_to user_path(@request)
    else
      render :new
    end

  end

  def safe_params
    params.require(:request).permit(:date_start, :date_end)
  end
end
