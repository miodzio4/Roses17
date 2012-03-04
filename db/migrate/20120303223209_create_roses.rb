class CreateRoses < ActiveRecord::Migration
  def self.up
    create_table :roses do |t|
      t.string :name
      t.string :description
      t.integer :flower_color_id
      t.string :flower_color_desc
      t.string :synonims
      t.integer :milddew_imm_id
      t.string :leaves_color
      t.integer :leaf_spot_imm_id
      t.integer :fragrance_id
      t.integer :height_id
      t.string :height_text
      t.integer :freeze_imm_id
      t.integer :type_id
      t.string :year
      t.string :origin
      t.boolean :ADR
      t.string :flower_shape
      t.string :cultivation
      t.string :remarks
      t.timestamps
    end
  end

  def self.down
    drop_table :roses
  end
end
