require "./lib/player"

describe Scrabble::Player do
  before :each do
    @player1 = Scrabble::Player.new("bob")
    @player2 = Scrabble::Player.new("andre")
    @player3 = Scrabble::Player.new("batman")
    @player4 = Scrabble::Player.new("spiderman")
    @player2.play("love") # love = 7
    @player2.play("toast") # toast = 5
    @player2.play("hand") # hand = 8
    @player3.total = 101

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

  describe "#play" do
    it "adds the input word to the plays array" do
      @player1.play("sparkle")
      expect(@player1.plays).to eq ["sparkle"]
    end
    it "adds the input word to the plays array" do
      expect(@player2.plays).to eq ["love", "toast", "hand"]
    end
    it "returns false is player has already won" do
      expect(@player3.play("word")).to eq false
    end
  end

  describe "#total_score" do
    it "sums up and returns the score of the players words" do
      expect(@player2.total_score).to eq 20
    end
  end

  describe "#won?" do
    it "returns true if player has over 100 points" do
      expect(@player3.won?).to eq true
    end

    it "returns false if player does not have over 100 points" do
      expect(@player2.won?).to eq false
    end
    it "returns false if player does not have over 100 points" do
      @player4.total = 100
      expect(@player4.won?).to eq false
    end
  end


end
