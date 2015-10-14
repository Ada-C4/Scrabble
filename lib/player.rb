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
  end
end
