class CreateMilddewImmSearches < ActiveRecord::Migration
  def self.up
    create_table :milddew_imm_searches do |t|
      t.integer :search_id
      t.integer :milddew_imm_id
      t.timestamps
    end
  end

  def self.down
    drop_table :milddew_imm_searches
  end
end
