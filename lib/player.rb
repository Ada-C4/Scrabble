require "./lib/scrabble"

module ScrabbleMod
  class Player
    attr_accessor :name, :won, :plays
    def initialize(name)
      @name = name
      @plays = []
      @won = false
    end

    def name
      return @name
    end

    def plays
      return @plays
    end

    def play(word)
      if @won == true
        return false
      else
        @plays.push(word)
      end
    end

    def total_score
      total_score = 0
      @plays.each do |word|
        total_score += ScrabbleMod::Scrabble.score(word)
      end
      return total_score
    end

    def won?
      if total_score > 100
        @won = true
        return true
      else
        return false
      end
    end

    def highest_scoring_word
      ScrabbleMod::Scrabble.highest_score_from(@plays)
    end

    def highest_word_score
      highest_scoring_word = ScrabbleMod::Scrabble.highest_score_from(@plays)
      return ScrabbleMod::Scrabble.score(highest_scoring_word)
    end
  end
end
