class CreateFreezeImmSearches < ActiveRecord::Migration
  def change
    create_table :freeze_imm_searches do |t|
      t.integer :search_id
      t.integer :freeze_imm_id

      t.timestamps
    end
  end
end
