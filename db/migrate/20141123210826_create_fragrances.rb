class CreateFragrances < ActiveRecord::Migration
  def change
    create_table :fragrances do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
