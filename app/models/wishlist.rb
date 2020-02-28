class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :watch

  # Deleted requires presence stuff.
end
