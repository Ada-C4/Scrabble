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

  

end
