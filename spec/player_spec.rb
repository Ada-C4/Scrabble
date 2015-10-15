require "./lib/scrabble_master"

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
    it "returns an array full of words" do
      @player.play("oranges")
      @player.play("stirred")
      expect(@player.plays).to eq ["oranges", "stirred"]
    end
  end
  describe "#play(word)" do
    it "adds the played word to the @plays array" do
      expect(@player.play("word")).to eq ["word"]
    end
    it "returns false if player has already won" do
      @player.play("oranges")
      @player.play("stirred")
      expect(@player.play("word")).to be_falsey
    end
  end
  describe "#total_score" do
    it "sums up and returns the total score of the players words" do
      @player.play("snack")
      @player.play("apple")
      @player.play("oranges")
      expect(@player.total_score).to eq 11 + 9 + 58
    end
  end
  describe "#won?" do
    it "returns true if player has over 100 points" do
      @player.play("oranges")
      @player.play("stirred")
      expect(@player.won?).to be_truthy
    end
    it "returns false if player has under 100 points" do
      @player.play("cat")
      @player.play("dog")
      expect(@player.won?).to be_falsey
    end
  end
  describe "#highest_scoring_word" do
    it "returns nil if @plays is empty" do
      expect(@player.highest_scoring_word).to be_nil
    end
    it "returns the highest scoring word the user has played" do
      @player.play("cat")
      @player.play("crazy")
      @player.play("orange")
      expect(@player.highest_scoring_word).to eq "crazy"
    end
  end
  describe "#highest_word_score" do
    it "returns nil if @plays is empty" do
      expect(@player.highest_word_score).to be_nil
    end
    it "returns the highest scoring word score" do
      @player.play("cat")
      @player.play("crazy")
      @player.play("orange")
      expect(@player.highest_word_score).to eq 19
    end
  end
end
