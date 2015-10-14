module Scrabble
  class Player
    attr_reader :name
    attr_accessor :plays
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
      total = 0
      @plays.map do |word|
        score = Scrabble.score(word)
        total += score
      end
      return total
    end
    def won?
      if total_score > 100
        true
      else
        false
      end
    end
  end
end
