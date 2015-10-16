module Scrabble
  class Player
    attr_reader :name, :plays

    def initialize(name)
      @name = name
      @plays = []

    end

    def play(word)
      if won? == true
        return false
      else
        @plays.push(word)
      end
    end

    def total_score
      total = 0
      @plays.each do |word|
        total += Scrabble.score(word)
      end
      return total
    end

    def highest_scoring_word
      Scrabble.highest_score_from(@plays)
    end

    def highest_word_score
      Scrabble.score(highest_scoring_word)
    end

    def won?
      total_score > 100
    end

  end
end
