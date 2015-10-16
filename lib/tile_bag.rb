require "./lib/scrabble"

class TileBag < Scrabble::Scrabble
  def initialize
    @bag = ["b", "b", "c", "c", "f", "f", "p", "p", "v", "v"]
    @tiles = []
    @default_tiles = draw_tiles(7)
  end


  def draw_tiles(num)
  tiles = @tiles
    num.times do
      tiles.push(@bag.sample)
    end
    tiles
  end
end

#def generate_answer
#  possible_words = ["beef", "onion", "boot", "shoe", "dog", "cat", "fireball", "mandrake"]
#  @answer = possible_words.sample.split("")
#end
