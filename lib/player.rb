require "./lib/scrabble.rb"
require "./lib/tilebag.rb"
module Scrabble
  class Player
    attr_reader :name, :plays, :highest_scoring_word
    attr_accessor :player_tiles

    def initialize(name)
      if name.class != String
        puts "Invalid name. Must be a string. Now your name is Player."
        @name = "Player"
      else
        @name = name
      end
      @plays = []
      @highest_scoring_word = ""
      @player_tiles = []
    end

    def play(word)
      # Check to see if all letters in word are a-z
      all_char = word.split("").inject(true) { |all, char| all && ('a'..'z').include?(char.downcase) }
      if won? || all_char == false
        return false
      end
      @plays.push(word)
      if @highest_scoring_word == "" || Scrabble.score(word) > Scrabble.score(@highest_scoring_word)
        @highest_scoring_word = word
      end
    end

    def total_score
      score = 0
      @plays.each do |word|
        score += Scrabble.score(word)
      end
      return score
    end

    def won?
      if total_score > 100
        return true
      else
        return false
      end
    end

    def highest_word_score
      if @highest_scoring_word == ""
        return 0
      else
        Scrabble.score(@highest_scoring_word)
      end
    end

    def draw_tiles(tile_bag)
      tile_number = 7 - @player_tiles.length
      drawn = tile_bag.draw_tiles(tile_number)
      @player_tiles += drawn
    end

  end

end
