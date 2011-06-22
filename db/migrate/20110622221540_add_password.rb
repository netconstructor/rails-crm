class AddPassword < ActiveRecord::Migration
  def self.up
    add_column :agents, :hashed_password, :string
    add_column :agents, :salt, :string
  end

  def self.down
    remove_column :agents, :hashed_password
    remove_column :agents, :salt
  end
end
