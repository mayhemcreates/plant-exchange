class Message < ApplicationRecord
  belongs_to :plants
  belongs_to :users
  
end
