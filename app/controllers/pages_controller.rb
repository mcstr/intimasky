class PagesController < ApplicationController
  before_action :authenticate_user!
  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @mask = Mask.find(@bookings[0][:mask_id])

  end
  def home
  end
  def search
  end
end
