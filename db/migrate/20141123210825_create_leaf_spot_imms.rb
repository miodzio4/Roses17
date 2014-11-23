class CreateLeafSpotImms < ActiveRecord::Migration
  def change
    create_table :leaf_spot_imms do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
