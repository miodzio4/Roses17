class CreateMilddewImms < ActiveRecord::Migration
  def change
    create_table :milddew_imms do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
