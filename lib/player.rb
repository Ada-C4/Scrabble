module Scrabble
  class Player
    attr_reader :name, :plays, :tiles

    def initialize(name)
      @name = name
      @plays = []
      @tiles = []
    end

    def draw_tiles(tile_bag)
      number = 7 - @tiles.length
      @tiles += tile_bag.draw_tiles(number)
    end

    def play(word)
      word = word.upcase
      if won?
        return false
      else
        found_tiles = @tiles.find_all {|l| word.include?(l)}
        if found_tiles.size == word.size
          # this is an enumerable to remove tiles played from @tiles
          @tiles.reject! { |i| word.include?(i) }
          @plays.push(word)
        else
          raise ArgumentError
        end
      end
    end

    def total_score
      player_score = 0
      @plays.each do |word|
        player_score += Scrabble.score(word)
      end

      return player_score
    end

    def won?
      if total_score > 100
        return true
      else
        return false
      end
    end

    def highest_scoring_word
      Scrabble.highest_score_from(@plays) if @plays.size != 0
    end

    def highest_word_score
      Scrabble.score(highest_scoring_word) if @plays.size != 0
    end

    def create_mock(options)
      @name = options[:name] || @name
      @tiles = options[:tiles] || @tiles
      @plays = options[:plays] || @plays
    end

  end
end
