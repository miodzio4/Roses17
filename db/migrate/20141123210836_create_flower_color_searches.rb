class CreateFlowerColorSearches < ActiveRecord::Migration
  def change
    create_table :flower_color_searches do |t|
      t.integer :search_id
      t.integer :flower_color_id

      t.timestamps
    end
  end
end
