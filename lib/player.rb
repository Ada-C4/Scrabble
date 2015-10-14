module Scrabble
  class Player
    attr_reader :name
    attr_accessor :plays
    def initialize(name)
      @name = name
      @plays = []
    end
    def play(word)
      @plays.push(word)
      # Returns false if player has already won
    end
    def total_score
      total = 0
      @plays.map do |word|
        score = Scrabble.score(word)
        total += score
      end
      return total
    end
  end
end
