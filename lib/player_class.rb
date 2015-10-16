require "./lib/scrabble_class.rb"

module Scrabble
  class Player
    attr_accessor :name

    def initialize(name)
      @name = name
      @played_words_array = []
      @total_score = 0
    end

    def plays
       # returns an array of the words played by the player
      return @played_words_array
    end

    def play(word)
      if self.won?   # returns false if the player has already won.
        return false
      else
        @played_words_array.push(word)  # add input word (parameter) to the plays array.
        @total_score += Scrabble.score(word)# call the score method on the scrabble class and pass it (word)
      end
    end

    def total_score
      return @total_score
      # sums up score
      # returns the score of the players words
    end

    def won?
      if @total_score > 100
        return true
      else
        return false
      end
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
end
