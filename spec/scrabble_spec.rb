require "./lib/scrabble"

describe Scrabble do
  describe "self.score(letter)" do
    it "assigns a value of 1 to letter A" do
      expect(Scrabble::Scrabble.score("A")).to eq 1
    end
  end
end
