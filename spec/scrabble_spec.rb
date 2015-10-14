require "./lib/scrabble"

describe Scrabble do
  before :each do
    @scrabble = Scrabble.new
  end
  it 'does something' do
    expect(@scrabble).to be_an_instance_of Scrabble
  end

  describe "#letter_score" do
    it "scores the letter a" do
      expect(@scrabble.letter_score("a")).to eq 1
    end

    #it "scores the letter e" do
    #  expect(@scrabble.letter_score("e")).to eq 1
    #end

    it "scores the letter m" do
      expect(@scrabble.letter_score("m")).to eq 3
    end

    it "scores the letter b" do
      expect(@scrabble.letter_score("b")).to eq 3
    end

    it "scores the letter c" do
      expect(@scrabble.letter_score("c")).to eq 3
    end

    it "scores the letter p" do
      expect(@scrabble.letter_score("p")).to eq 3
    end
  end

  describe "#word_score" do
    it "iterates through letters and changes them to integers" do
      expect(@scrabble.word_score("m" "a")).to eq 4
    end
  end
end
