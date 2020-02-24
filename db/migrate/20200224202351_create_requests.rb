class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :date_start
      t.string :date_end
      t.references :watch, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
