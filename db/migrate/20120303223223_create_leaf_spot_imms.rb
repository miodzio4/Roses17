class CreateLeafSpotImms < ActiveRecord::Migration
  def self.up
    create_table :leaf_spot_imms do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :leaf_spot_imms
  end
end
