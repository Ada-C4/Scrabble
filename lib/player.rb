module Scrabble
  class Player
    attr_reader :name, :plays
    attr_accessor :total
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

    def won?
      if @total > 100
        true
      else
        false
      end
    end

  end
end
