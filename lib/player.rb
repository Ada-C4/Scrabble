require "./lib/scrabble.rb"
module Scrabble
  class Player
    attr_reader :name, :plays

    def initialize(name)
      @name = name
      @plays = []
    end

    def play(word)
      @plays.push(word)
    end

    def total_score
      score = 0
      @plays.each do |word|
        score += Scrabble.score(word)
      end
      return score
    end



  end

end
