class CreateTypeSearches < ActiveRecord::Migration
  def self.up
    create_table :type_searches do |t|
      t.integer :search_id
      t.integer :type_id
      t.timestamps
    end
  end

  def self.down
    drop_table :type_searches
  end
end
