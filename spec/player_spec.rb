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
        @won = true
        expect(@player.play(word)).to eq false
      end
      it "adds the input word to the plays array" do
        expect(@player.play(@word)).to eq [@word]
      end
    end
  end
end
