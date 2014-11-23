class CreateFreezeImms < ActiveRecord::Migration
  def change
    create_table :freeze_imms do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
