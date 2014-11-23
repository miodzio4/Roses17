class CreateFragranceSearches < ActiveRecord::Migration
  def change
    create_table :fragrance_searches do |t|
      t.integer :search_id
      t.integer :fragrance_id

      t.timestamps
    end
  end
end
