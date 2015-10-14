require "./lib/scrabble"
describe Scrabble::Scrabble do
  before :each do
    @game = Scrabble::Scrabble.new
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
  # describe "#self.score(word)" do
  #   @word = "abcdefghijklmnopqrstuvwxyz"
  #   it "totals the letter values in a word" do
  #     expect(Scrabble::Scrabble.score(@word)).to eq 87
  #   end
  # end
end
