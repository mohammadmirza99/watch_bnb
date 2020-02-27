class Watch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :requests, dependent: :destroy

  has_one_attached :image_url
  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true, numericality: true
end
