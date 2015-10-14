require "./lib/scrabble"

describe Scrabble do
  before :each do
    @word = "abba"
    @number = 93
    @float = 1.5
    @array = [1,2,3]
    @array_of_words = ["ab","baaaaaaa", "aabbaa"]
    @array_of_words2 = ["aaaaaaa", "abb"]
    @array_of_words3 = ["ab", "abb", "bba"]
  end

  describe "#self.score" do
    it "returns an integer" do
      expect(Scrabble::Scrabble.score(@word)).to be_kind_of(Fixnum)
    end
    it "accepts only a string" do
      expect(Scrabble::Scrabble.score(@word)).to be_kind_of(Fixnum)
      expect(Scrabble::Scrabble.score(@number)).to eq "Error message"
      expect(Scrabble::Scrabble.score(@float)).to eq "Error message"
      expect(Scrabble::Scrabble.score(@array)).to eq "Error message"
    end
    it "correctly scores a word" do
      expect(Scrabble::Scrabble.score(@word)).to eq 8
    end
  end

  describe "#self.highest_score_from" do
    it "returns a string" do
      expect(Scrabble::Scrabble.highest_score_from(@array_of_words)).to be_kind_of(String)
    end
    it "selects word with 7 letters in case of tie" do
      expect(Scrabble::Scrabble.highest_score_from(@array_of_words2)).to eq "aaaaaaa"
    end
    it "selects word with fewest letters in case of tie, unless one of words has 7 letters" do
      expect(Scrabble::Scrabble.highest_score_from(@array_of_words)).to eq "aabbaa"
    end
    it "in case of score and word length tie, selects first word provided" do
      expect(Scrabble::Scrabble.highest_score_from(@array_of_words3)).to eq "abb"
    end

  end
end

describe "SCORES" do
  it "matches keys with values" do
    expect(Scrabble::SCORES[:a]).to eq 1
  end
end
