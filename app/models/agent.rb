class Agent < ActiveRecord::Base
  validates_presence_of :name, :email
  has_many :actions
end
