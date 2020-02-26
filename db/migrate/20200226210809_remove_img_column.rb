class RemoveImgColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :watches, :image_url
  end
end
