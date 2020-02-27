class PagesController < ApplicationController
  before_action :authenticate_user!
  def dashboard
    @user = current_user
    @bookings = @user.bookings
  end
  def home
  end
  def search
  end
end
