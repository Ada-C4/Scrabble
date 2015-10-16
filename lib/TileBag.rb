module Scrabble
DEFAULT_TILES = {A: 9, B: 2, C: 2, D: 4, E: 12, F: 2, G: 3, H: 2, I: 9, J: 1, K: 1, L: 4, M: 2, N: 6, O: 8, P: 2, Q: 1, R: 6, S: 4, T: 6, U: 4, V: 2, W: 2, X: 1, Y: 2, Z: 1}
  class TileBag
   attr_reader :tile_quantities
    def initialize
      @tile_quantities = DEFAULT_TILES
    end
    def draw_tiles(num)
      key_array = @tile_quantities.keys
      drawn_tiles = []
      num.times do
        drawn_tiles.push(key_array[rand(0..(key_array.length - 1))])
      end
      p drawn_tiles
      drawn_tiles.each do |letter|
        @tile_quantities[letter] -= 1
        if @tile_quantities[letter] == 0
          @tile_quantities.delete(letter)
        end
      end
      p @tile_quantities
    end
  end
end

# total_tiles = 0
# values_array.each do |value|
#   total_tiles += value
# end

# figure out why eventually you get a nil class
# need to account for multiple letters being drawn when there's less than that number left in @tile_quantities
