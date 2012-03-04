class CreateHeightSearches < ActiveRecord::Migration
  def self.up
    create_table :height_searches do |t|
      t.integer :search_id
      t.integer :height_id
      t.timestamps
    end
  end

  def self.down
    drop_table :height_searches
  end
end
