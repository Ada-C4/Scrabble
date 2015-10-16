require "./lib/TileBag"
describe Scrabble::TileBag do
  before :each do
    @tilebag = Scrabble::TileBag.new
  end
  describe ".self.new" do
    it "creates a new instance" do
      expect(@tilebag).to be_an_instance_of Scrabble::TileBag
    end
  end
  describe "#initialize" do
    it "sets up an instance with a collection of default tiles" do
      expect(@tilebag.tile_quantities).to eq Scrabble::DEFAULT_TILES
    end
  end
  describe "#draw_tiles(num)" do
    it "returns num number of random tiles" do
      expect(@tilebag.draw_tiles(4).length).to eq 4
    end
    # it "removes the tiles from the default set" do
    #   @tilebag.draw_tiles(4).values
    #   expect(@tilebag.tile_quantities.values)
    # end
  end
end
