class AddPhotosToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :photos, :string
  end
end
