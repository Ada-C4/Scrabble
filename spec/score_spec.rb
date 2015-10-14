  require "./lib/score.rb"

# describe Word do
# @word = Scrabblegame.new
# end

describe "#word_string" do
  it "checks if the input is a string" do
    word = "test"
    #.to be String/Fixnum
    expect(word).to be_an_instance_of String
  end
end

describe "score" do
  it "checks the value of the word 'puppy'" do
    word = "puppy"
    expect(Scrabble::Scrabblegame::score(word)).to eq 14
  end
  it "checks the value of the word 'huzzah'" do
    word = "huzzah"
    expect(Scrabble::Scrabblegame::score(word)).to eq 30
  end
  it "checks the value of the word 'cat'" do
    word = "cat"
    expect(Scrabble::Scrabblegame::score(word)).to eq 5
  end
end
