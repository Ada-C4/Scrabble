require './lib/scrabble_master'

describe ".lookup(word)" do
  it "accepts a word from the dictionary" do
    expect(Scrabble::WordDictionary.lookup("word")).to be_truthy
  end
end
