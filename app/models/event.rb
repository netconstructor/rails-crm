class Event < ActiveRecord::Base
  belongs_to :agent
  belongs_to :customer
  
  scope :unassigned, where(:agent_id => nil)
  scope :assigned_to, lambda { |agent_id|  where(:agent_id => agent_id) }
end
