class AddDescriptionToWatches < ActiveRecord::Migration[5.2]
  def change
    add_column :watches, :description, :text
  end
end
