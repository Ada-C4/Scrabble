require "./lib/player"

describe Scrabble::Player do
  before :each do
    @player1 = Scrabble::Player.new "bob"
  end

  describe ".new" do
    it "creates a new instance of Player" do
      expect(@player1).to be_an_instance_of Scrabble::Player
    end
  end

  describe "#name" do
    it "returns the @name variable" do
      expect(@player1.name).to eq "bob"
    end
  end

  describe "#plays" do
    it "returns an array of the words played by player" do
      expect(@player1.plays).to eq []
    end
  end


end
