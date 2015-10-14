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
      # will need to return false if player has won
    end





  end

end
