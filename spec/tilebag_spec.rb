require "./lib/player.rb"
require "./lib/scrabble.rb"
require "./lib/tilebag.rb"

describe Scrabble do
  describe Scrabble::TileBag do
    before :each do
      @tilebag = Scrabble::TileBag.new
    end
    it "sets up a new tile bag with a collection of tiles" do
      expect(@tilebag.tiles.length).to eq(98)
    end

    it "has the correct quantity of tiles for each letter" do
      expect(@tilebag.tiles.count("a")).to eq(9)
      expect(@tilebag.tiles.count("k")).to eq(1)
      expect(@tilebag.tiles.count("1")).to eq(0)
      expect(@tilebag.tiles.count("r")).to eq(6)
    end


  end
end
