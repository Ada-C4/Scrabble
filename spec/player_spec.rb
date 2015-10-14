require "./lib/player"
describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Charles")
  end
  describe ".self.new(name)" do
    it "creates a new instance" do
      expect(@player).to be_an_instance_of Scrabble::Player
    end
    it "assigns instance variable name" do
      expect(@player.name).to eq "Charles"
    end
  end
  describe "#plays" do
    it "returns an Array of the words played by the player" do
      expect(@player.plays).to eq []
    end
  end
end
