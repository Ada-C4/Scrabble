require './lib/tilebag.rb'


  describe Scrabble::TileBag do
    before :each do
      @tilebag = Scrabble::TileBag.new
    end

      describe ".new" do
        it "creates a new instance of a tile bag" do
          expect(@tilebag).to be_an_instance_of Scrabble::TileBag
        end
      end

      describe "draw_tilebag(num)" do
        it "randomly grabs (num) number of tiles" do
          expect((@tilebag.draw_tiles(3)).length).to eq 3
        end

      end




  end
