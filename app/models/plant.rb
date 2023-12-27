class Plant < ApplicationRecord
  belongs_to :users
  has_many :messages
  belongs_to :categories
end
