class Action < ActiveRecord::Base
  belongs_to :agent
  belongs_to :customer
  validates_presence_of :state, :customer_id
end
