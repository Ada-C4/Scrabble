require "./lib/player.rb"
# require "./lib/highest_score.rb"

describe Scrabble::Player do
  before :each do
    @bob = Scrabble::Player.new("Bob")
  end

  describe ".new" do
    it "Creates a new instance of a player" do
      expect(@bob).to be_an_instance_of Scrabble::Player
    end
  end

  describe "name" do
    it "Returns the name initialized at the beginning of the game" do
    expect(@bob.name).to eq "Bob"
    end
  end

  describe "words_played" do
    it "Returns an empty array when the player has not played an words (@words_played)" do
      expect(@bob.words_played).to eq []
    end
  end

  describe "play_word" do
    before :each do
      @word = "test"
    end
    it "adds a single word to the empty @words_played array" do
      expect(@bob.play_word(@word)).to eq ["test"] #changed this line to refer to instance
    end

    #THIS ISNT WORKING NOW. Do different test or figure out how to make this work.
    # it "adds additional words to @words_played" do
    #   expect(@bob.play(@word)).to eq ["test", "test"]
    # end
  end
end
