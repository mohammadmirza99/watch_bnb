class Request < ApplicationRecord
  belongs_to :watch
  belongs_to :user
  validates :date_start, presence: true
  validates :date_end, presence: true
end
