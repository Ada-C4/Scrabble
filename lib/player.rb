require "./lib/scrabble.rb"
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
      end
      @plays.push(word)
    end

    def total_score
      score = 0
      @plays.each do |word|
        score += Scrabble.score(word)
      end
      return score
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
