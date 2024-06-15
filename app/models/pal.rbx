class Pal < ApplicationRecord
  belongs_to :friender, class_name: 'Person'
  belongs_to :friendee, class_name: 'Person'
  belongs_to :relation
end