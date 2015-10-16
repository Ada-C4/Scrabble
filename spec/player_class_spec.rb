require './lib/player_class.rb'

# minimum of 11 specs
describe Scrabble::Player do
    before :each do # (Before each thing I do, create a new player)
      @player1 = Scrabble::Player.new("Logan")
    end
    describe ".new" do
      it "creates a new instance of Player" do
        expect(@player1).to be_an_instance_of Scrabble::Player
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
        @player1.play("WORD")
      end
      it "adds the player's guessed word to the played_words_array" do
        expect(@player1.plays.include?("CAT")).to be_truthy
      end
      it "returns false if the player has already won" do
        if @player1.won?
          expect(@player1.play("WORD")).to be_falsey
        end
      end
      it "returns the total score of all words played" do
        expect(@player1.total_score).to eq 13
      end
    end

    describe "won?" do
      it "player has won" do
        @player1.play("ZEBRA")
        @player1.play("QUIZ")
        @player1.play("ZZZZZZZ")
        expect(@player1.won?).to eq true
      end
      # it "returns true if the player has won" do
      #   if @player1.total_score > 99
      #     expect(@player1.won?).to be_truthy
      #   end
      end
    end


#end
