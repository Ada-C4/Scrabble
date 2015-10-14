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

  describe "total_score" do
    before :each do
      @player.play("star")
      @player.play("suns")
      @player.play("dog")
    end
    it "returns 13 when star, suns, dog are played" do
      expect(@player.total_score).to eq 13
    end
  end

  describe "won?" do
    before :each do
      @player.play("zzzzzzzzzzz")
    end
    it "returns true if player has over 100 points" do
      expect(@player.won?).to eq true
    end
    it "returns false if player has won" do
      expect(@player.play("word")).to eq false
    end
  end

  describe "won?" do
    before :each do
      @player.play("to")
    end
    it "returns false if player has 100 points or less" do
      expect(@player.won?).to eq false
    end
  end

  describe "highest_scoring_word" do
    before :each do
      @player.play("star")
      @player.play("suns")
      @player.play("dog")
    end
    it "returns dog as the highest scoring word when star, suns, dog are played" do
      expect(@player.highest_scoring_word).to eq "dog"
    end
  end

  describe "highest_word_score" do
    before :each do
      @player.play("star")
      @player.play("suns")
      @player.play("dog")
    end
    it "returns 5 as the highest word score when star, suns, dog are played" do
      expect(@player.highest_word_score).to eq 5
    end
  end
end
