class CreateHeights < ActiveRecord::Migration
  def self.up
    create_table :heights do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :heights
  end
end
