require "./lib/player"
require "./lib/scrabble"

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
  describe "#total_score" do
    before :each do
      @player.play("snack")
      @player.play("apple")
      @player.play("oranges")
    end
    it "sums up and returns the total score of the players words" do
      expect(@player.total_score).to eq 11 + 9 + 58
    end
  end
end
