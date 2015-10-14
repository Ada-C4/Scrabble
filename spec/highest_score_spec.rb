require "./lib/highest_score.rb"

describe Scrabble::ScrabbleGame do

  describe "self.highest_score_from" do
    before :each do
      @word_array1 = ["aaa", "bbb"]
      @word_array2 = ["puppy", "huzzah", "cat", "baritone", "zxzx", "asteroid"]
    end

    it "Can look at this method with rspec" do
      puts "Rspec can see in here"
    end

    it "Rspec can see method" do
      expect(Scrabble::ScrabbleGame.highest_score_from("hi")).to eq "hi"
    end

    it "Score each word in the array and return an array of scores" do
      expect(Scrabble::ScrabbleGame.highest_score_from(@word_array1)).to eq [3, 9]
    end
  end
end
