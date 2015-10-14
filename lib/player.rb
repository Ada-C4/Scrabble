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
  end
end
