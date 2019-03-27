class AddPhotoToHotels < ActiveRecord::Migration[5.1]
  def change
    add_column :hotels, :photo, :string
  end
end
