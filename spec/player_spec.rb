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
end
