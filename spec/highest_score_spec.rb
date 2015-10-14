require "./lib/highest_score.rb"

describe Scrabble::ScrabbleGame do

  # before :each do
  #   @scrabble = Scrabble::ScrabbleGame.new
  # end

  # describe ".new" do
  #   it "creates a new instance of ScrabbleGame" do
  #       expect(@scrabble).to be_an_instance_of Scrabble::ScrabbleGame
  #   end
  # end

  describe "self.highest_score_from" do
    before :each do
      @word_array = ["puppy", "huzzah", "cat", "baritone", "zxzx", "asteroid"]
    end

    it "Can look at this method with rspec" do
      puts "Rspec can see in here"
    end

    it "Rspec can see method" do
      expect(Scrabble::ScrabbleGame.highest_score_from("hi")).to eq "hi"
    end
    
    # it "Array is an array of strings" do
    #
    # end

    #it "For each word in array, call method to get the score" do
    #
    #end
  end
end
