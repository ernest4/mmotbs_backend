class Unit < ApplicationRecord
  belongs_to :position, :inverse_of => :units
end
