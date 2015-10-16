require "./lib/tilebag_class.rb"

describe Scrabble::TileBag do

  before :each do
    bag = Scrabble::TileBag.new
  end

  describle "self.new" do
    it "creates an new bag with a default collection of tiles" do
      expect()
    # Beginning Tile Quantities:
    #   - A: 9
    #   - B: 2
    #   - C: 2
    #   - D: 4
    #   - E: 12
    #   - F: 2
    #   - G: 3
    #   - H: 2
    #   - I: 9
    #   - J: 1
    #   - K: 1
    #   - L: 4
    #   - M: 2
    #   - N: 6
    #   - O: 8
    #   - P: 2
    #   - Q: 1
    #   - R: 6
    #   - S: 4
    #   - T: 6
    #   - U: 4
    #   - V: 2
    #   - W: 2
    #   - X: 1
    #   - Y: 2
    #   - Z: 1
    end
  end

  desbrible "draw_tiles" do
    it "returns the number of tiles the player has asked for randomly from the bag tiles" do
      expect()
    end
    it "removes the tiles given to the player from the default set" do
      expect
    end
  end

  desbrible "tiles_remaining" do
    it "returns the number of tiles remaining in the bag" do
      expect()
    end
  end

end #describe Scrabble::TileBag do
