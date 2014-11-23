class CreateHeights < ActiveRecord::Migration
  def change
    create_table :heights do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
