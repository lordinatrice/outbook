class CreateJoints < ActiveRecord::Migration[5.2]
  def change
    create_table :joints do |t|
      t.references :activity, foreign_key: true
      t.references :places, foreign_key: true

      t.timestamps
    end
  end
end
