class CreateFlowerColors < ActiveRecord::Migration
  def change
    create_table :flower_colors do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
