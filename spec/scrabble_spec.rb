require "./lib/scrabble"
describe Scrabble::Scrabble do
  before :each do
    @game = Scrabble::Scrabble.new
    @word = "cat"
  end
  describe ".new" do
    it "creates a new instance" do
      expect(@game).to be_an_instance_of Scrabble::Scrabble
    end
  end
  describe ".return_letter_value" do
    it "returns value for letter using LETTER_VALUES" do
      @letter = "l"
      expect(Scrabble::Scrabble.return_letter_value(@letter)).to eq 1
    end
  end
  describe ".self.make_array(word)" do
    it "creates an array of letters in the word" do
      expect(Scrabble::Scrabble.make_array(@word)).to eq ["c", "a", "t"]
    end
  end
  describe ".self.make_value_array(word)" do
    it "returns an array of letter values" do
      expect(Scrabble::Scrabble.make_value_array(@word)).to eq [3, 1, 1]
    end
  end
  describe ".self.score(word)" do
    it "totals the elements of the array" do
      expect(Scrabble::Scrabble.score(@word)).to eq 5
    end
  end
end
