module Scrabble
  class Player
    attr_reader :name
    attr_accessor :plays
    def initialize(name)
      @name = name
      @plays = []
    end
  end
end
