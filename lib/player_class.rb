require "./lib/scrabble_class.rb"

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
    @played_words_array = []
  end

  def plays
     # returns an array of the words played by the player
    return @played_words_array
  end

  def play(word)
    @played_words_array.push(word)  # add input word (parameter) to the plays array.
    if self.won?   # returns false if the player has already won.
      return false
    end
  end

  def total_score
    # sums up score
    # returns the score of the players words
  end

  def won?
    return true
    # if the player has over 100 points, return true
    # otherwise, return false
  end

  def highest_scoring_word
    # returns highest scoring word the user has played.
  end

  def highest_word_score
    # returns the highest_scoring_word SCORE
  end
end
