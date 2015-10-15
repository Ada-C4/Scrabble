require "./lib/tilebag.rb"

describe Scrabble::TileBag do
  before :each do
    @tilebag = Scrabble::TileBag.new
  end


  describe "TileBag.new" do
    it "creates a new instance of TileBag" do
      expect(@tilebag).to be_an_instance_of Scrabble::TileBag
    end
  end

  describe "draw tiles(num)" do
  end

end
