class DropActions < ActiveRecord::Migration
  def self.up
    drop_table :actions
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration, "Can't be bothered to recreate actions table"
  end
end
