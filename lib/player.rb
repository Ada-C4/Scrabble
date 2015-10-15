require "./lib/score.rb"
require "./lib/highest_score.rb"
#DONEinitialize(name): Called when you use Player.new, sets up an instance with the instance variable @name assigned
#DONEname: returns the @name instance variable
#words_played: returns an Array of the words played by the player
#play(word): Adds the input word to the words_played Array
# Returns false if player has already won
#total_score: Sums up and returns the score of the players words
#won?: If the player has over 100 points, returns true, otherwise returns 'false'
#highest_scoring_word: Returns the highest scoring word the user has played.
#highest_word_score: Returns the highest_scoring_word score.
#
module Scrabble

  class Player
    def initialize(name)
      @name = name.capitalize
      @words_played = []
    end

    def name
      @name
    end

    def words_played
      @words_played
    end

    def play_word(word)
      @words_played.push(word)
      return @words_played
        if won?
          return false
        # don't add word into history if you've won
        end
    end

    def total_score
    end

    def won?
      if total_score > 100
      end
    end
  end
end
