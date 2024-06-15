class Event < ApplicationRecord
  has_many :interactions
  has_one_attached :image
end