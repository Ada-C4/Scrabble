module Scrabble
  class Player
    attr_reader :name, :plays, :total
    def initialize(name)
      @name = name
      @plays = []
      @total = 0
    end

    def play(word)
      @plays.push(word)
    end

    def total_score
      @plays.each do |word|
        @total += Scrabble.score(word)
      end
      return @total
    end

  end
end
