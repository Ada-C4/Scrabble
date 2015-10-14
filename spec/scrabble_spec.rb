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

    it "scores the letter b" do
      expect(@scrabble.word_score("b")).to eq 3
    end

    it "scores the letter c" do
      expect(@scrabble.word_score("c")).to eq 3
    end
  end
end
