class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :model
      t.string :brand
      t.string :material
      t.integer :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
