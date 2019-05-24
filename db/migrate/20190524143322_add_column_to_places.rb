class AddColumnToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :photo2, :string
    add_column :places, :photo3, :string
  end
end
