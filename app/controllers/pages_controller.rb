class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @watches = Watch.all
  end
end
