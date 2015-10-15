require "./lib/player.rb"
require "./lib/scrabble.rb"
require "./lib/tilebag.rb"

describe Scrabble do
  describe Scrabble::TileBag do
    before :each do
      @tilebag = Scrabble::TileBag.new
    end

    describe "#initialize" do
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

    describe "#draw_tiles(num)" do
      it "draws the correct number of tiles from the bag" do
        start = @tilebag.tiles.length
        @tilebag.draw_tiles(5)
        expect(@tilebag.tiles.length).to eq(start-5)
      end

      it "returns an array of letters of num length" do
        letters_drawn = @tilebag.draw_tiles(5)
        expect(letters_drawn).to be(Array)
        expect(letters_drawn.length).to eq(5)
      end

      it "returns an error if num is not between 0 and 7" do
        expect(@tilebag.draw_tiles(-1)).to be([])
        expect(@tilebag.draw_tiles(10)).to be([])
      end
    end


  end
end
