module Scrabble

  class Scrabble
    SCORES = {
    "A" => 1
        }
    def self.score(letter)
      return SCORES[letter]
    end


  end
end
