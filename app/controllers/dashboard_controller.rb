class DashboardController < ApplicationController
  def index
    @my_events = Event.assigned_to(1).collect do |e|
      EventDecorator.new(e)
    end

    @unassigned_events = Event.unassigned.collect do |e|
      EventDecorator.new(e)
    end
  end
end
