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
      Scrabble.highest_score_from(@plays)
    end

    def highest_word_score
      Scrabble.score(highest_scoring_word)
    end

    def won?
      @total > 100
    end

  end
end
