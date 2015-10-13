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
  # describe "LETTER_VALUES is a hash" do
  #   expect(LETTER_VALUES.is_a? Hash).to be_truthy
  # end
  describe "word score is equal to the sum of letter values" do
    
  end
end
