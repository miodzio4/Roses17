class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :flower_color_id
      t.integer :milddew_imm_id
      t.integer :leaf_spot_imm_id
      t.integer :fragrance_id
      t.integer :height_id
      t.integer :freeze_imm_id
      t.integer :type_id
      t.boolean :ADR

      t.timestamps
    end
  end
end
