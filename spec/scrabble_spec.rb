require './lib/scrabble.rb'

describe Scrabble do
  before :each do
    @scrabble = Scrabble.new
  end
  describe "#new" do
    it "create a new instance of Scrabble" do
      expect(@scrabble).to be_an_instance_of Scrabble
    end
  end
  describe "#score" do
    before :each do
      @guess_word = "rabbit"
    end

    it "returns a numeric score" do
      expect(@scrabble.score(@guess_word)).to be_a Fixnum
    end
    it "accepts strings as input" do
      expect(@scrabble.score(nil)).
    end
  end
end
