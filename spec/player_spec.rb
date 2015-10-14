require './lib/player.rb'

describe Player do
  before :each do
    @ada = Player.new("Ada")
    @player_words =[]
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

  # describe "#plays" do
  #   it "returns an Array of words played"
  #   expect(@ada.plays).to eq @player_words
  # end

  describe "#play" do
    it "pushes the guessed word onto array of guessed words" do
    @ada.play("dog")
    @ada.play("cat")
    @ada.play("falcon")
    expect(@player_words).to eq ["dog", "cat", "falcon"]
    end
  end


end
