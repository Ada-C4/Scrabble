module Scrabble
  class Scrabble
    def self.letter_score(letter)
      case letter
        when "A" || "E" || "I" || "O" || "U" || "L" || "N" || "R" || "S" || "T"
         point = 1
        when "D" || "G"
         point = 2
        when "B" || "C" || "M" || "P"
         point = 3
        when "F" || "H" || "V" || "W" || "Y"
         point = 4
        when "K"
         point = 5
        when "J" || "X"
         point = 8
        else
         point = 10
      end
      return point
    end

  def self.letter_array(word)
    l_array = word.split("")
    return l_array
  end

  end
end
