class AddNameToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :name, :string
  end
end
