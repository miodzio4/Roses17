class CreateLeafSpotImmSearches < ActiveRecord::Migration
  def self.up
    create_table :leaf_spot_imm_searches do |t|
      t.integer :search_id
      t.integer :leaf_spot_imm_id
      t.timestamps
    end
  end

  def self.down
    drop_table :leaf_spot_imm_searches
  end
end
