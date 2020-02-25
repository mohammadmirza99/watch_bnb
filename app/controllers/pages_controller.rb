class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    # binding.pry
  end
end
