require "./lib/highest_score.rb"

describe Scrabble::ScrabbleGame do

  describe "self.highest_score_from" do
    before :each do
      @word_array1 = ["aaa", "bbb"]
      @word_array2 = ["bb", "aaaaaa", "a", "b", "ki"]
      @word_array3 = ["puppy", "huzzah", "cat", "baritone", "zxzx", "asteroid"]
    end

    it "Can look at this method with rspec" do
      puts "Rspec can see in here"
    end

    # it "Rspec can see method" do
    #   expect(Scrabble::ScrabbleGame.highest_score_from("hi")).to eq "hi"
    # end

    # it "Score each word in the array and return an array of scores" do
    #   expect(Scrabble::ScrabbleGame.highest_score_from(@word_array1)).to eq [3, 9]
    # end

    it "Top_scoring_words_hash contains words that have tied scores" do
      expect(Scrabble::ScrabbleGame.highest_score_from(@word_array2)).to eq ({"bb"=>6, "aaaaaa"=>6, "ki"=>6})
    end

    # it "Return word with highest score" do
    #   expect(Scrabble::ScrabbleGame.highest_score_from(@word_array1)).to be == "bbb"
    # end
    #
    # it "If more than one highest scoring word, go with the shorter word" do
    #   expect(Scrabble::ScrabbleGame.highest_score_from(@word_array2)).to be == "bb"
    # end
  end
end
