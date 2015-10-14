require "./lib/player"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("ergdarg")
  end
  describe ".new" do
    it "creates a new instance of player" do
      expect(@player).to be_an_instance_of Scrabble::Player
    end
  end
  describe "#name" do
    it "gives the name of the player" do
      expect(@player.name).to eq "ergdarg"
    end
  end
  describe "#plays" do
    it "returns an empty array of words at the beginning of the game" do
      expect(@player.plays).to eq []
    end
  end
  describe "#play(word)" do
    it "adds the played word to the @plays array" do
      expect(@player.play("word")).to eq ["word"]
    end
  end
end
