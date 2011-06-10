class Event < ActiveRecord::Base
  belongs_to :agent
  belongs_to :customer
end
