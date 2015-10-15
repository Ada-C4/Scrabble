require "./lib/tile_bag.rb"

describe Scrabble::TileBag do

  describe "Tile Bag" do
    before :each do
      @tile_bag = Scrabble::TileBag.new
    end

    describe 'initialize' do

    end

    describe '#draw_tiles(num)' do
      it 'returns num tiles' do
        tiles = @tile_bag.draw_tiles(4)
        expect(tiles.length).to eq(4)
      end
      it 'removes the tiles from tile_bag_array' do

      end
    end


  end
end
