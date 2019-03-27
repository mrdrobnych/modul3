class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.integer :hotel_id
      t.string :phone
      t.string :mail

      t.timestamps
    end
  end
end
