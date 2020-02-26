class Watch < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :requests, dependent: :destroy

  has_one_attached :image_url
  # validates :image_url, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

  validates :model, presence: true
  validates :brand, presence: true
  validates :material, presence: true
  validates :price, presence: true, numericality: true
end
