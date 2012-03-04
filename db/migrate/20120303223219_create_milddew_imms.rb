class CreateMilddewImms < ActiveRecord::Migration
  def self.up
    create_table :milddew_imms do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :milddew_imms
  end
end
