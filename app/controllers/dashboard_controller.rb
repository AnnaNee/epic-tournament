class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
  end

  def messages
  end
  def tournaments
  end

  def create_tournament
  end

  def my_tournaments
  end

  def profile
  end
end
