require "./lib/scrabble"

describe Scrabble do
  before :each do
    @scrabble = Scrabble.new
  end
  it 'does something' do
    expect(@scrabble).to be_an_instance_of Scrabble
  end

  describe "#word_score" do
    it "scores the letter m" do
      expect(@scrabble.word_score("m")).to eq 3
    end
  end
end
