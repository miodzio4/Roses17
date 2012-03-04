class CreateFreezeImms < ActiveRecord::Migration
  def self.up
    create_table :freeze_imms do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :freeze_imms
  end
end
