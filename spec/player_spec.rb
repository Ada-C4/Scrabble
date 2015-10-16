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
    it "returns an array with the played word" do
      @player.create_mock({tiles: %w(o r a n g e s)})
      @player.play("oranges")
      expect(@player.plays).to eq ["oranges"]
    end
  end
  describe "#play(word)" do
    it "adds the played word to the @plays array" do
      @player.create_mock({tiles: %w(w o r d a b c)})
      expect(@player.play("word")).to eq ["word"]
    end
    it "removes the played tiles from the @tiles array" do
      @player.create_mock({tiles: %w(w o r d a b c)})
      @player.play("word")
      expect(@player.tiles).to eq ["a", "b", "c"]
    end
    it "returns false if player has already won" do
      @player.create_mock({tiles: %w(o r a n g e s), plays: %w(stirred)})
      @player.play("oranges")
      expect(@player.play("word")).to be_falsey
    end
    it "gives an error if try to play a word without the appropriate tiles" do
      @player.create_mock({tiles: %w(o r a n g e p)})
      expect{ @player.play("oranges") }.to raise_error(ArgumentError)
    end
  end
  describe "#total_score" do
    it "sums up and returns the total score of the players words" do
      @player.create_mock({plays: %w(snack apple oranges)})
      expect(@player.total_score).to eq 11 + 9 + 58
    end
  end
  describe "#won?" do
    it "returns true if player has over 100 points" do
      @player.create_mock({plays: %w(stirred oranges)})
      expect(@player.won?).to be_truthy
    end
    it "returns false if player has under 100 points" do
      @player.create_mock({plays: %w(cat dog)})
      expect(@player.won?).to be_falsey
    end
  end
  describe "#highest_scoring_word" do
    it "returns nil if @plays is empty" do
      expect(@player.highest_scoring_word).to be_nil
    end
    it "returns the highest scoring word the user has played" do
      @player.create_mock({plays: %w(cat crazy orange)})
      expect(@player.highest_scoring_word).to eq "crazy"
    end
  end
  describe "#highest_word_score" do
    it "returns nil if @plays is empty" do
      expect(@player.highest_word_score).to be_nil
    end
    it "returns the highest scoring word score" do
      @player.create_mock({plays: %w(cat crazy orange)})
      expect(@player.highest_word_score).to eq 19
    end
  end
  describe "#tiles" do
    it "returns an empty array of tiles at the beginning of the game" do
      expect(@player.tiles).to eq []
    end
  end
  describe "#draw_tiles(tile_bag)" do
    it "adds 7 tiles to the players tiles array" do
      @tilebag = Scrabble::TileBag.new
      expect(@player.draw_tiles(@tilebag).length).to eq 7
    end
  end
end
