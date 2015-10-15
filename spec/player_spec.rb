require "./lib/player.rb"
# require "./lib/highest_score.rb"

describe Scrabble::Player do
  before :each do
    @bob = Scrabble::Player.new("Bob")
  end

  describe ".new" do
    it "creates a new instance of a player" do
      # use expect to
      # we set @chair = Chair.new, this is why we expect @chair to be an instance of Chair
      # be_an_instance_of is a keyword
      expect(@bob).to be_an_instance_of Scrabble::Player
    end
  end

  describe "name" do
    it "calls the name initialized at the beginning of the game" do
    expect(@bob.name).to eq "Bob"
    end
  end

describe "plays" do
  it "adds a word to the @plays array" do
    word = "test"
    expect(Scrabble::Player::play(word)).to eq "test"
  end
end
