require './lib/player_class.rb'

# minimum of 11 specs
describe Player do
  before :each do # (Before each thing I do, create a new player)
      @player1 = Player.new("Logan")
    end
    describe ".new" do
      it "creates a new instance of Player" do
        expect(@player1).to be_an_instance_of Player
      end
    end

    describe "name" do
      it "will return the name passed in the initialize (Logan)" do
        expect(@player1.name).to eq "Logan"
      end
    end

    describe "plays" do
      it "returns an array of the words played by the player" do
        expect(@player1.plays).to be_an Array
      end
    end

    describe "play(word) method" do
      before :each do
        @player1.play("CAT")
      end
      it "adds the player's guessed word to the played_words_array" do
        expect(@player1.plays.include?("CAT")).to be_truthy
      end
      it "returns false if the player has already won" do
        if @player1.won?
          expect(@player1.play("WORD")).to be_falsey
        end
      end
    end

end
