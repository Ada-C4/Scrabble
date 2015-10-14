require './lib/player.rb'

describe Player do
  before :each do
    @ada = Player.new("Ada")
  end

  describe "#new" do
    it "create a new instance of Player" do
      expect(@ada).to be_an_instance_of Player
    end

    it "assigns the input name to the @name variable" do
      expect(@ada.name).to eq "Ada"
    end
  end

  describe "#name" do
    it "returns the name assigned to the player" do
      expect(@ada.name).to eq "Ada"
    end
  end


end
