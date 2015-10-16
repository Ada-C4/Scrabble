require "./lib/scrabble_player_class"

describe Player do
  before :each do
    @player = Scrabble::Scrabble::Player.new("Jack")
  end


  describe "returns the @name instance variable" do
    it "returns @name" do
      expect(@player.name).to eq "Jack"
    end
  end

  describe "shows words played" do
    it "returns @plays" do
      expect(@player.play("apple")).to eq ["apple"]
    end
  end


  describe "shows total score" do
    it "returns score of all words played" do
      @player.play("venus")
      expect(@player.total_score).to eq 7
    end
  end

  describe "tells if the player has over 100 points"

end
