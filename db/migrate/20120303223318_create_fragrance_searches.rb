class CreateFragranceSearches < ActiveRecord::Migration
  def self.up
    create_table :fragrance_searches do |t|
      t.integer :search_id
      t.integer :fragrance_id
      t.timestamps
    end
  end

  def self.down
    drop_table :fragrance_searches
  end
end
