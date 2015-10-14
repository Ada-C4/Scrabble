require "./lib/scrabble.rb"

describe Scrabble::Scrabble do


  describe "self.score(word)" do
    it "returns 1 for A" do
      expect(Scrabble::Scrabble.score("A")).to eq 1
    end
    it "returns 8 for HELLO" do
      expect(Scrabble::Scrabble.score("HELLO")).to eq 8
    end
    it "returns 8 for hello" do
      expect(Scrabble::Scrabble.score("hello")).to eq 8
    end
  end

  describe "self.highest_score_from(array_of_words)" do
    it "returns zoo from [eat, star, zoo]" do
      expect(Scrabble::Scrabble.highest_score_from(["eat", "star", "zoo"])).to eq "zoo"
    end
  end

end
