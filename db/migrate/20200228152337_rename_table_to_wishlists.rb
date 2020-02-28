class RenameTableToWishlists < ActiveRecord::Migration[5.2]
  def change
    rename_table :reviews, :wishlists
  end
end
