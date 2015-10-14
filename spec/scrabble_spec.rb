require "./lib/scrabble"

describe Scrabble do
  describe "self.score(letter)" do
    it "assigns a value of 1 to letter A" do
      expect(Scrabble::Scrabble.score("A")).to eq 1
    end
    it "assigns a value of 2 to letter D" do
      expect(Scrabble::Scrabble.score("D")).to eq 2
    end
    it "assigns a value of 3 to the letter B" do
      expect(Scrabble::Scrabble.score("B")).to eq 3
    end
    it "assigns a value of 4 to the letter F" do
      expect(Scrabble::Scrabble.score("F")).to eq 4
    end
    it "assigns a value of 5 to the letter K" do
      expect(Scrabble::Scrabble.score("K")).to eq 5
    end
    it "assigns a value of 8 to the letter J" do
      expect(Scrabble::Scrabble.score("J")).to eq 8
    end
    it "assigns a value of 10 to the letter Q" do
      expect(Scrabble::Scrabble.score("Q")).to eq 10
    end
  end
  describe "self.score(word)" do
    it "assigns a score of 8 for 'word'" do
      expect(Scrabble::Scrabble.score("word")).to eq 8
    end
  end
  describe "self.highest_score_from(array_of_words)" do
    it "returns word with highest score" do
      expect(Scrabble::Scrabble.highest_score_from(["cat","word"])).to eq "word"
    end
  end
end
