require "./lib/player"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("ergdarg")
  end
  describe ".new" do
    it "creates a new instance of player" do
      expect(@player).to be_an_instance_of Scrabble::Player
    end
    it "creates a new instance of player with name ergdarg" do
      expect(@player.name).to eq "ergdarg"
    end
  end
end
