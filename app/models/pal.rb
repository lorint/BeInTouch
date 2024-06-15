class Pal < ApplicationRecord
    belongs_to :friendee, optional: true, class_name: "::Person", inverse_of: :pals_friendees
    belongs_to :friender, optional: true, class_name: "::Person", inverse_of: :pals_frienders
    belongs_to :relation, optional: true
    has_many :pal_passions
    has_many :passions, through: :pal_passions
end # model Pal