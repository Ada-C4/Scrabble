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
      @guess_word3 = "it"
      @array = [@guess_word3, @guess_word2, @guess_word]
    end

    it "returns a numeric score" do
      expect(@scrabble.score(@guess_word)).to be_a Fixnum
    end

    it "scores the words according to rules" do
      expect(@scrabble.score(@guess_word)).to eq 10
    end

    it "accepts strings as input" do
      #expect(@scrabble.score(nil))
    end

    it "adds new words to player_words array" do
      @scrabble.score(@guess_word)
      #@scrabble.score(@guess_word2)
      expect(@scrabble.player_words).to eql [@guess_word]
    end
  end

  describe "#highest_score_from" do
    before :each do
      @guess_word = "rabbit"
      @guess_word2 = "snake"
      @guess_word3 = "it"
      @guess_word4 = "kk"
      @guess_word5 = "z"
      @array = [@guess_word3, @guess_word2, @guess_word]
    end

    it "returns word from array with the highest score" do
      expect(@scrabble.highest_score_from(@array)).to eq @guess_word
    end

    it "returns word with fewer tiles if tie" do
      @array2 = [@guess_word3, @guess_word2, @guess_word4, @guess_word]
      expect(@scrabble.highest_score_from(@array)).to eq @guess_word4
    end
  end
end
