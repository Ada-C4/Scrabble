require "./lib/scrabble"

module Scrabble
  class Player
    attr_reader :name, :plays, :player_score

    def initialize(name)
      @name = name
      @plays = []
      # @player_score = 0
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


  end
end
