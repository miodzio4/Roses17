class CreateTypeSearches < ActiveRecord::Migration
  def change
    create_table :type_searches do |t|
      t.integer :search_id
      t.integer :type_id

      t.timestamps
    end
  end
end
