class AddColumnToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :image_url, :string
  end
end
