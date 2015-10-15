require "./lib/scrabble_player_class"

describe Player do
  before :each do
    @player = Scrabble::Player.new("jill")

  end
end

describe "returns the @name instance variable" do
  it "returns @name" do
    expect(@player.name("jill")).to eq "jack"
  end
end
