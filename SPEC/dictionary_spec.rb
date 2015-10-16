require "./lib/scrabble_module"

describe Scrabble::Dictionary do
  describe "valid_word?" do
    it "checks to see if aardvark is a valid word (is included in the dictionary)" do
      expect(Scrabble::Dictionary.valid_word?("aardvark")).to eq true
    end
  end
end
