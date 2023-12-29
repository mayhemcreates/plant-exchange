class Plant < ApplicationRecord
  belongs_to :user
  has_many :messages
  belongs_to :category
  has_many_attached :photos
end
