module Scrabble

  class Scrabble

    SCORE_HASH = {
      "a" => 1,
      "e" => 1,
      "i" => 1,
      "o" => 1,
      "u" => 1,
      "l" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "d" => 2,
      "g" => 2,
      "b" => 3,
      "c" => 3,
      "m" => 3,
      "p" => 3,
       "f" => 4,
       "h" => 4,
       "v" => 4,
       "w" => 4,
       "y" => 4,
       "k" => 5,
       "j" => 8,
       "x" => 8,
       "q" => 10,
       "z" => 10,
       " " => 0
    }

    def self.score(word)
      score = 0
      if word.class != String || word == ""
        return nil
      end
      word.downcase.strip.each_char do |letter|
        score += SCORE_HASH[letter]
      end
      score += 50 if word.length == 7
      return score
    end

  end

end
