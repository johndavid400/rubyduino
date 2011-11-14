class CreateArduinos < ActiveRecord::Migration
  def self.up
    create_table :arduinos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :arduinos
  end
end
