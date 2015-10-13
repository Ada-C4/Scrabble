require './lib/scrabble.rb'

describe Scrabble do
  describe Scrabble do

    describe ".score(word)" do
      it "returns the correct point value for a single letter" do
        expect(Scrabble::Scrabble.score("a")).to eq 1
        expect(Scrabble::Scrabble.score("g")).to eq 2
        expect(Scrabble::Scrabble.score("m")).to eq 3
        expect(Scrabble::Scrabble.score("v")).to eq 4
        expect(Scrabble::Scrabble.score("k")).to eq 5
        expect(Scrabble::Scrabble.score("x")).to eq 8
        expect(Scrabble::Scrabble.score("z")).to eq 10
      end
      it "returns the correct point value for a single uppercase letter" do
        expect(Scrabble::Scrabble.score("A")).to eq 1
        expect(Scrabble::Scrabble.score("G")).to eq 2
        expect(Scrabble::Scrabble.score("M")).to eq 3
        expect(Scrabble::Scrabble.score("V")).to eq 4
        expect(Scrabble::Scrabble.score("K")).to eq 5
        expect(Scrabble::Scrabble.score("X")).to eq 8
        expect(Scrabble::Scrabble.score("Z")).to eq 10
      end

      it "returns a number when given a String argument" do
        expect(Scrabble::Scrabble.score(@word)).to be > 0
      end
      it "returns nil when given an empty String" do
        expect(Scrabble::Scrabble.score("")).to be_nil
      end
      it "does not accept non-string arguments" do
        expect(Scrabble::Scrabble.score(4)).to be_nil
      end

    end


  end



end
