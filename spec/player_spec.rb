require "./lib/player"
describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Charles")
    @word = "cat"
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
  describe "#play(word)" do
    it "Adds the input word to the plays Array" do
      @player.play(@word)
      expect(@player.plays).to eq ["cat"]
    end
  end
end
