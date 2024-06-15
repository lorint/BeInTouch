class Person < ApplicationRecord
  has_many :pals_friendees, class_name: "::Pal", foreign_key: :friendee_id, inverse_of: :friendee
  has_many :pals_frienders, class_name: "::Pal", foreign_key: :friender_id, inverse_of: :friender
  has_many :passions, foreign_key: :created_by_id
  has_one_attached :image
end
