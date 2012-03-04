class CreateFreezeImmSearches < ActiveRecord::Migration
  def self.up
    create_table :freeze_imm_searches do |t|
      t.integer :search_id
      t.integer :freeze_imm_id
      t.timestamps
    end
  end

  def self.down
    drop_table :freeze_imm_searches
  end
end
