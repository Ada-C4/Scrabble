require './lib/scrabble.rb'

describe Scrabble do
  before :each do
    @scrabble = Scrabble.new
  end

  describe "#new" do
    it "create a new instance of Scrabble" do
      expect(@scrabble).to be_an_instance_of Scrabble
    end
  end


  describe "#score" do
    before :each do
      @guess_word = "rabbit"
      @guess_word2 = "snake"
    end

    it "returns a numeric score" do
      expect(@scrabble.score(@guess_word)).to be_a Fixnum
    end

    it "accepts strings as input" do
      #expect(@scrabble.score(nil))
    end

    it "adds new words to player_words array" do
      @scrabble.score(@guess_word)
      #@scrabble.score(@guess_word2)
      expect(@player_words).to eq [@guess_word]
    end
  end
end
