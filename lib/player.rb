require 'pry'
require "./lib/scrabble.rb"
require "./lib/tile_bag"

class Player
  attr_accessor :name, :player_words

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

  def assign_bag_to_player(tile_bag)
    @bag = tile_bag
  end

  def tiles
    #binding.pry
    @tile_tray = @bag.draw_tiles(7-@tile_tray.length)
    return @tile_tray
  end

end
