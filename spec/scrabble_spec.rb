require "./lib/scrabble"

describe Scrabble do
  before :each do
    @word = "abba"
    @number = 93
    @float = 1.5
    @array = [1,2,3]
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
  end
end

describe "SCORES" do
  it "matches keys with values" do
    expect(Scrabble::SCORES[:a]).to eq 1
  end
end
