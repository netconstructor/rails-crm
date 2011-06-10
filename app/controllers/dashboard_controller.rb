class DashboardController < ApplicationController
  def index
    @events = Event.all
  end

end
