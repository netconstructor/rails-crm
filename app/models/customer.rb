class Customer < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_uniqueness_of :email
  has_many :actions
end
