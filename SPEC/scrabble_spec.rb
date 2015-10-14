require "./lib/scrabble.rb"

describe Scrabble::Scrabble do


  describe "self.score(word)" do
    it "returns 1 for A" do
      expect(Scrabble::Scrabble.score("A")).to eq 1
    end
  end
end
