class AddPhotoToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :photo, :string
  end
end
