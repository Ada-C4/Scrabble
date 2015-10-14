require "./lib/player.rb"
require "./lib/scrabble.rb"

describe Scrabble do
  describe Scrabble::Player do
    before :each do
      @player = Scrabble::Player.new("Jenn")
    end

    describe ".new(name)" do
      it "creates a new instance of Player with a name" do
        expect(@player).to be_an_instance_of Scrabble::Player
      end
    end

    describe "#name" do
      it "assigns player name" do
        expect(@player.name).to eq("Jenn")
      end
    end

    describe "#plays" do
      it "returns an array of the words played" do
        expect(@player.plays).to be_an(Array)
      end
    end

    describe "#play(word)" do
      it "returns false if the player has already won" do
        @player.play("zzzzxzxzxzxzxzxzxzxzz")
        expect(@player.play("a")).to be(false)
      end

      it "adds the input word to the plays Array" do
        @player.play("hello")
        expect(@player.plays).to eq(["hello"])
        @player.play("dog")
        expect(@player.plays).to eq(["hello", "dog"])
      end
    end

    describe "#total_score" do
      before :each do
        @player.play("hello")
        @player.play("dog")
        @player.play("white")
        @player.play("brown")
        @player2 = Scrabble::Player.new("Jen")
      end
      it "Sums up and returns the score of the players words" do
        expect(@player.total_score).to eq(34)
        expect(@player2.total_score).to eq(0)
      end
    end

    describe "#won?" do
      it "returns true if player has over 100 points, otherwise false" do
        @player.play("hello")
        @player.play("dog")
        @player.play("white")
        @player.play("brown")
        expect(@player.won?).to be(false)
        @player.play("zzzzzzz")
        expect(@player.won?).to be(true)
      end
    end

    describe "#highest_scoring_word" do
      it "returns the highest scoring word the player has played" do
        @player.play("hello")
        @player.play("dog")
        @player.play("xxxxxx")
        @player.play("white")
        @player.play("brown")
        expect(@player.highest_scoring_word).to eq("xxxxxx")
      end
    end

    describe "#highest_word_score" do
      it "returns the score of the highest scoring word" do
        @player.play("hello")
        @player.play("dog")
        @player.play("zzzzzz")
        @player.play("white")
        @player.play("brown")
        expect(@player.highest_word_score).to eq(60)
        @player2 = Scrabble::Player.new("Jen")
        expect(@player2.highest_word_score).to eq(0)
      end
    end



  end


end
