require "./lib/scrabble_master"

describe Scrabble::TileBag do
  before :each do
    @tilebag = Scrabble::TileBag.new
  end
  describe ".new" do
    it "creates a new instance of TileBag using the initialize method" do
      expect(@tilebag).to be_an_instance_of Scrabble::TileBag
    end
  end
  describe "#initialize" do
    it "creates a new tile bag full of 98 tiles" do
      expect(@tilebag.tiles.length).to eq 98
    end
  end

end
