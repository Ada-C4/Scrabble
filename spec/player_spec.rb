require "./lib/player"

describe ScrabbleMod do
  describe ScrabbleMod::Player do
    before :each do
      @player = ScrabbleMod::Player.new(@name)
    end
    describe "#self.new" do
      it "creates a new instance" do
        expect(@player).to be_an_instance_of ScrabbleMod::Player
      end
      it "has a name when initialized" do
        expect(@player.name).to eq @name
      end
    end
    describe "#name" do
      it "returns the name of the Player" do
        expect(@player.name).to eq @name
      end
    end
    describe "#plays" do
      it "returns an array" do
        expect(@player.plays).to be_kind_of(Array)
      end
    end
    describe "#play(word)" do
      it "returns false if a player has already won" do
        @player.won = true
        expect(@player.play(@word)).to be false
      end
      it "adds the input word to the plays array" do
        @player.plays = [@word,@word1,@word2]
        expect(@player.play(@word4)).to eq [@word,@word1,@word2,@word4]
      end
    end
    describe "#total_score" do
      it "returns an integer" do
        expect(@player.total_score).to be_kind_of(Fixnum)
      end
      it "returns a correctly totaled score" do
        @player.plays = ["cat","dog","mouse"]
        expect(@player.total_score).to eq 17
      end
    end
    describe "#won?" do
      
    end
  end
end
