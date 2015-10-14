require "./lib/scrabble"

module Scrabble
  class Player
    attr_reader :name, :plays

    def initialize(name)
      @name = name
      @plays = []

    end

    def play(word)
      if won?
        return false
      else
        @plays.push(word)
      end
    end

    def total_score
      player_score = 0
      @plays.each do |word|
        player_score += ::Scrabble::Scrabble.score(word)
      end

      return player_score
    end

    def won?
      if total_score > 100
        return true
      else
        return false
      end
    end

    def highest_scoring_word
      ::Scrabble::Scrabble.highest_score_from(@plays)
    end

    def highest_word_score
      ::Scrabble::Scrabble.score(highest_scoring_word)
    end
  end
end
