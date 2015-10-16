require 'pry'
require "./lib/scrabble.rb"
require "./lib/tile_bag"

class Player
  attr_accessor :name, :player_words, :tile_tray

#initializes a new player
  def initialize(name)
    @name = name
    @player_words =[]
    @bag = nil
    @tile_tray = []
  end

#returns the array of words a player has already played
  def plays
    return @player_words
  end

#takes a word as a parameter and checks if it is a string
  def play(word)
    if word.class != String
        raise ArgumentError, "Input must be a string."
    end
    #if word is not a string it returns false, and if it is pushes the word to an array of all guessed words
    won? ? (return false) : (@player_words.push(word))
  end

#takes all of the words guessed by a player and calls the score method on each of them, then sums up all those scores
  def total_score
    total_score = 0
    @player_words.each do |word|
      total_score += Scrabble.score(word)
    end
    return total_score
  end

#returns true is a player has scored a hundred or more points
  def won?
    total_score >= 100 ? (return true) : (return false)
  end

#returns the maximum of the array of player_words based on score of each word
  def highest_scoring_word
    high_word = @player_words.max_by { |word| Scrabble.score(word) }
    return high_word
  end

  def highest_word_score
    return Scrabble.score(highest_scoring_word)
  end

  def draw_tiles(tile_bag)
    @bag = tile_bag
    new_player_tiles = @bag.draw_tiles(7-@tile_tray.length)
    @tile_tray.push(new_player_tiles)
    return @tile_tray.flatten!
  end

  def tiles
    return @tile_tray
  end

end
