class CreateActions < ActiveRecord::Migration
  def self.up
    create_table :actions do |t|
      t.integer :customer_id
      t.string :state
      t.integer :agent_id
      t.datetime :schedule
      t.integer :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
