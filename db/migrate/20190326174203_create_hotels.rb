class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.float :rate
      t.string :desk

      t.timestamps
    end
  end
end
