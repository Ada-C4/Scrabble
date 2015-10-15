require './lib/tile_bag.rb'

describe TileBag do
  before :each do
    @tile_barf = TileBag.new
  end

  describe "#new" do
    it "create a new instance of Player" do
      expect(@tile_barf).to be_an_instance_of TileBag
    end

    it "expect there to be the correct number of letters" do
      expect(@tile_barf.tile_hash[:J]).to eq 1
    end
  end
end
