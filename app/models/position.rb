class Position < ApplicationRecord
  belongs_to :unit
  belongs_to :map
end
