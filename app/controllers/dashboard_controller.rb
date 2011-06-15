class DashboardController < ApplicationController
  def index
    @my_events = Event.assigned_to(1)
    @unassigned_events = Event.unassigned
  end
end
