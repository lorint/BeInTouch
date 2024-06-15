class Passion < ApplicationRecord
    belongs_to :created_by, optional: true, class_name: "::Person", inverse_of: :passions
    has_many :pal_passions
    has_many :pals, through: :pal_passions
  end # model Passion
  