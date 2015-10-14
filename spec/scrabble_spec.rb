require "./lib/scrabble"

describe Scrabble::Scrabble do
  before :each do
    @game = Scrabble::Scrabble.new
  end

  describe ".new" do
    it "creates a new instance of Scrabble" do
      expect(@game).to be_an_instance_of Scrabble::Scrabble
    end
  end

  describe ".letter_value" do
    it "gives value of 1 to select letters" do
      expect(Scrabble::Scrabble.letter_value("A")).to eq 1
      expect(Scrabble::Scrabble.letter_value("L")).to eq 1
      expect(Scrabble::Scrabble.letter_value("S")).to eq 1
    end
    it "gives value of 2 to select letters" do
      expect(Scrabble::Scrabble.letter_value("D")).to eq 2
    end
    it "gives value of 3 to select letters" do
      expect(Scrabble::Scrabble.letter_value("M")).to eq 3
    end
    it "gives value of 10 to select letters" do
      expect(Scrabble::Scrabble.letter_value("Z")).to eq 10
    end
  end

  describe ".score" do
    
  end

end
