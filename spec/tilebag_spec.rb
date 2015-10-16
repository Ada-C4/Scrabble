require "./lib/tilebag"

describe Scrabble::TileBag do
  before :each do
    @tilebag1 = Scrabble::TileBag.new
  end

  describe "#initialize" do
    it "sets up an instance of the TileBag class" do
      expect(@tilebag1).to be_an_instance_of Scrabble::TileBag
    end
    it "sets up an instance with a collection of default tiles" do
      expect(@tilebag1.tile_quantities).to_not be_empty
      expect(@tilebag1.tile_quantities.length).to eq 98
      #test length to eq 100
      #expect(@tilebag1.tile_quantities["W"]).to eq 2
      #expect(@tilebag1.tile_quantities["L"]).to eq 4
    end
  end

  # describe "#draw_tiles" do
  #   it "returns the specifed number of random tiles" do
  #     expect(@tilebag1.draw_tiles(4).length).to eq 4
  #   end
  # end


end
