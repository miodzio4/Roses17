class CreateFlowerColorSearches < ActiveRecord::Migration
  def self.up
    create_table :flower_color_searches do |t|
      t.integer :search_id
      t.integer :flower_color_id
      t.timestamps
    end
  end

  def self.down
    drop_table :flower_color_searches
  end
end
