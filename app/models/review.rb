class Review < ApplicationRecord
  belongs_to :user
  belongs_to :watch
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: %w(1, 2, 3, 4, 5) }
end
