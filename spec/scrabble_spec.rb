require "./lib/scrabble"

describe Scrabble do
  describe "self.score(letter)" do
    it "assigns a value of 1 to letter A" do
      expect(Scrabble::Scrabble.score("A")).to eq 1
      expect(Scrabble::Scrabble.score("D")).to eq 2
      expect(Scrabble::Scrabble.score("B")).to eq 3
      expect(Scrabble::Scrabble.score("F")).to eq 4
      expect(Scrabble::Scrabble.score("K")).to eq 5
      expect(Scrabble::Scrabble.score("J")).to eq 8
      expect(Scrabble::Scrabble.score("Q")).to eq 10
    end
  end
  # describe "self.score(word)" do
  #   it "assigns a score for a word" do
  #     expect(Scrabble::Scrabble.score(word))
  #   end
  # end
end
