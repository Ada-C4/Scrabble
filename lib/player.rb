require "./lib/scrabble.rb"
require "./lib/tile_bag"

class Player
  attr_accessor :name, :player_words, :tile_tray

  def initialize(name)
    @name = name
    @player_words =[]
    @bag = nil
    @tile_tray = []
  end

  def plays
    return @player_words
  end

  def play(word)
    if word.class != String
        raise ArgumentError, "Input must be a string."
    end
    won? ? (return false) : (@player_words.push(word))
  end

  def total_score
    total_score = 0
    @player_words.each do |word|
      total_score += Scrabble.score(word)
    end
    return total_score
  end

  def won?
    total_score >= 100 ? (return true) : (return false)
  end

  def highest_scoring_word
    high_word = @player_words.max_by { |word| Scrabble.score(word) }
    return high_word
  end

  def highest_word_score
    return Scrabble.score(highest_scoring_word)
  end

  def draw_tiles(tile_bag=TileBag.new)
    @bag = tile_bag
    new_player_tiles = @bag.draw_tiles(7-@tile_tray.length)
    @tile_tray.push(new_player_tiles)
    return @tile_tray.flatten!
  end

  def tiles
    return @tile_tray
  end

end
