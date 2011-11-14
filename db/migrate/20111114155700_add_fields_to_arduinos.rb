class AddFieldsToArduinos < ActiveRecord::Migration
  def self.up
    add_column :arduinos, :port, :string
    add_column :arduinos, :speed, :string
    add_column :arduinos, :name, :string
  end

  def self.down
    remove_column :arduinos, :speed
    remove_column :arduinos, :port
    remove_column :arduinos, :name
  end
end
