class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :address
      t.string :category
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
