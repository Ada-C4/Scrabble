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
      if won? == true
        return false
      else
        @plays.push(word)
      end
    end

    def total_score
      @plays.each do |word|
        @total += Scrabble.score(word)
      end
      return @total
    end

    def highest_scoring_word

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
