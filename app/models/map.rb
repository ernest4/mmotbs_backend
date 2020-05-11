class Map < ApplicationRecord
  # the [:tiles -> jsonb] might not be used...
  # might be more efficient to just store arrays of things.
  # Although could use the jsonb as big blob to store initial board set up of different levels?
  # using generic identifiers like 'enemy levely 3 at x,y' so any enemy satisfying level 3 constraint
  # can be places there. Or even...randomly generate map each play! (and then persist it?)

  has_many :positions, :inverse_of => :map
  has_many :units, :through => :positions, :inverse_of => :maps
  # wip
  # has_many :enemy_units, -> { where(...) },
  #          :through => :positions, :source => :unit, :inverse_of => :maps
  # has_many :friendly_units, -> { where(...) },
  #          :through => :positions, :source => :unit, :inverse_of => :maps
  # has_many :npcs, -> { where(...) },
  #          :through => :positions, :source => :unit, :inverse_of => :maps
end

# # map controller, execute
# map.execute(command)

# # map execture
# def execute(command)
#   CommandValidator.call(command, map)
# end

# # command validator
# def call(command)
#   active_tile, target_tile, action = command

    # get player unit, check it exists, else raise InvalidActionError

#   case action
#   when 'move'
      # get target tile, check it is walkable
      # move, update models, shedule worker to push result through socket
#   when 'attack'
      # get target tile unit, check it exists
      # attack, update models, shedule worker to push result through socket
#   else
#     raise InvalidActionError
#   end
# end
