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





  end


end
