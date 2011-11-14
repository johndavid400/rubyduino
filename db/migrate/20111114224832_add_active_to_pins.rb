class AddActiveToPins < ActiveRecord::Migration
  def self.up
    add_column :pins, :active, :boolean
  end

  def self.down
    remove_column :pins, :active
  end
end
