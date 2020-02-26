class UsersController < ApplicationController

 def show
  # @user = User.find(params[:id])
  @watches = Watch.all
 end

 def new

end

 def create
  # @user = User.new(safe_params)
  # @user.save
  # redirect_to user_path(@user)
end

private

def safe_params
  # params.require(:user).permit(:first_name, :last_name, :address)
end

end
