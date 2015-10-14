require "./lib/scrabble"

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
      total_score = 0
      @plays.each do |word|
        total_score += ::Scrabble::Scrabble.score(word)
      end

      return total_score
    end


  end
end
