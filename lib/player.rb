require "scrabble.rb"
module Scrabble
  class Player
    attr_reader :name, :total_score
    def initialize(name)
      @name = name
      @plays = []
      @total_score = 0
    end

    def plays
      return @plays
    end

    def play(word)
      @plays.push(word)
      @total_score += Scrabble.score(word)
      if won?
        return false
      end
    end

    def won?
      if @total_score > 100
        return true
      else
        return false
      end
    end

  end
end
