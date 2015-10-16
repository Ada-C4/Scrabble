require 'pry'
require './lib/player.rb'

module Scrabble

# DONE! Create a TileBag class with a minimum of 5 specs. It should have the following class and instance methods:
# DONE! #initialize Called when you use TileBag.new, sets up an instance with a collection of default tiles
# #draw_tiles(num) returns num number of random tiles, removes the tiles from the default set.
# #tiles_remaining returns the number of tiles remaining in the bag
# Create specs for (minimum 2) and add to the Player class the following instance methods:
#
# #tiles a collection of letters that the player can play (max 7)
# #draw_tiles(tile_bag) fills tiles array until it has 7 letters from the given tile bag

  class TileBag

  attr_accessor :quantity

    def initialize

      @quantity = {}

      @quantity["a"] = 9
      @quantity["b"] = 2
      @quantity["c"] = 2
      @quantity["d"] = 4
      @quantity["e"] = 12
      @quantity["f"] = 2
      @quantity["g"] = 3
      @quantity["h"] = 2
      @quantity["i"] = 9
      @quantity["j"] = 1
      @quantity["k"] = 1
      @quantity["l"] = 4
      @quantity["m"] = 2
      @quantity["n"] = 6
      @quantity["o"] = 8
      @quantity["p"] = 2
      @quantity["q"] = 1
      @quantity["r"] = 6
      @quantity["s"] = 4
      @quantity["t"] = 6
      @quantity["u"] = 4
      @quantity["v"] = 2
      @quantity["w"] = 2
      @quantity["x"] = 1
      @quantity["y"] = 2
      @quantity["z"] = 1
    end

# turn @quantity into an array, shuffle, pop, and return x amount of letters

    def draw_tiles(num)
      letters_array = []
        num.times do
        letters_array.push(@quantity.keys.shuffle.pop)
        end

        letters_array.each do |letter|
          quantity.find

        end

      return letters_array

    end
  end
end
