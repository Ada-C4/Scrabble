module ScrabbleMod
  class Player
    attr_accessor :name
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
  end
end
