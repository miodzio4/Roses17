class CreateHeightSearches < ActiveRecord::Migration
  def change
    create_table :height_searches do |t|
      t.integer :search_id
      t.integer :height_id

      t.timestamps
    end
  end
end
