require "./lib/player.rb"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Ada")
  end
  describe "self.new(name)" do
    it "creates a new instance of Player" do
      expect(@player).to be_an_instance_of Scrabble::Player
    end
    it "returns the name instance variable of the player" do
      expect(@player.name).to eq "Ada"
    end
  end
  describe "plays and play(word)" do
    before :each do
      @player.play("star")
      @player.play("suns")
      @player.play("dog")
    end
    it "returns [star, suns, dog] when player plays star, suns, dog" do
      expect(@player.plays).to eq ["star", "suns", "dog"]
    end
  end
end
