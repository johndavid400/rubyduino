class CreatePins < ActiveRecord::Migration
  def self.up
    create_table :pins do |t|
      t.integer :arduino_id
      t.string :name
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :pins
  end
end
