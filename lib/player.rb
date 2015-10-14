require "scrabble.rb"
module Scrabble
  class Player
    attr_reader :name
    def initialize(name)
      @name = name
      @plays = []
    end

    def plays
      return @plays
    end

    def play(word)
      @plays.push(word)
    end
  end
end
