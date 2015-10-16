# Create a `TileBag` class with a minimum of 5 specs. It should have the following class and instance methods:
#
require "./lib/scrabble_class.rb"
require "./lib/player_class.rb"

module Scrabble
  class TileBag

    attr_accessor :avaliable_tiles_array

  # - `self.new` creates an instance with a collection of default tiles
  def initialize
    @avaliable_tiles_array = [?A * 9, ?B * 2, ?C * 2, ?D * 4, ?E * 12, ?F * 2, ?G * 3, ?H * 2, ?I * 9, ?J * 1, ?K * 1, ?L * 4, ?M * 2, ?N * 6, ?O * 8, ?P * 2, ?Q * 1, ?R * 6, ?S * 4, ?T * 6, ?U * 4, ?V * 2, ?W * 2, ?X * 1, ?Y * 2, ?Z * 1].join.split("")
  end

  # - `#draw_tiles(n)` returns n number of random tiles, removes the tiles from the default set.
  def draw_tiles
  end

  # - `#tiles_remaining` returns the number of tiles remaining in the bag
  def tiles_remaining
  end

  end #TileBag class
end #Scrabble module
