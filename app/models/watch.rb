class Watch < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :requests
  has_one_attached :image_url
  validates :model, presence: true
  validates :brand, presence: true
  validates :material, presence: true
  validates :price, presence: true, numericality: true
end
