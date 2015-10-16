module Scrabble
  class TileBag

    attr_reader :tile_bag

    def initialize
      @tile_bag = ([?A]*9 + [?B]*2 + [?C]*2 + [?D]*4 + [?E]*12 + [?F]*2 + [?G]*3 + [?H]*2 + [?I]*9 + [?J] +
      [?K] + [?L]*4 + [?M]*2 + [?N]*6 + [?O]*8 + [?P]*2 + [?Q]*1 + [?R]*6 + [?S]*4 + [?T]*6 + [?U]*4 +
      [?V]*2 + [?W]*2 + [?X]*1 + [?Y]*2 + [?Z]*1).shuffle
    end

    def draw_tiles(num)
      @tile_bag.pop(num)
    end

    def tiles_remaining
      @tile_bag.length
    end
  end
end
