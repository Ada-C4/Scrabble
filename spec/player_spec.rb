require "./lib/player.rb"
require "./lib/scrabble.rb"

describe Scrabble do
  describe Player do
    before :each do
      @player = Scrabble::Player.new("Jenn")
    end

    describe ".new(name)" do
      it "creates a new instance of Player with a name" do
        expect(@player).to be_an_instance_of Player
      end
    end





  end


end
