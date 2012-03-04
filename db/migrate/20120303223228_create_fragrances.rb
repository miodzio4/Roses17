class CreateFragrances < ActiveRecord::Migration
  def self.up
    create_table :fragrances do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :fragrances
  end
end
