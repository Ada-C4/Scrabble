require './lib/player.rb'

describe Player do
  before :each do
    @player = Player.new("Ada")
    #@player.new("Ada")
  end

  describe "#new" do
    it "create a new instance of Player" do
      expect(@player).to be_an_instance_of Player
    end

    # it "assigns the input name to the @name variable" do
    #   expect(Player.name).to eq "Ada"
    # end

  end



end
