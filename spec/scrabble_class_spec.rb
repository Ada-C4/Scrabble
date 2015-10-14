require './lib/scrabble_class.rb'

describe Scrabble do
  before :each do
    @game = Scrabble.new
  end
  describe ".new" do
    it "creates a new instance of a Chair" do
      expect(@game).to be_an_instance_of Scrabble
    end
  end
end
