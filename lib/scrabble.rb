module Scrabble
  class Scrabble
    # @letter_hash={ ["A", "E", "I", "O", "U", "L", "N", "R", "N", "S", "T"]=>  1,
    #               ["D", "G"] => 2,
    #               ["B","C", "M", "P"] => 3,
    #               ["F", "H", "V", "W", "Y"] => 4,
    #               ["K"] => 5,
    #               ["J", "X"] => 8,
    #               ["Q", "Z"]=> 10}


    def letter_score(letter)
      case letter
      when "A", "E", "I", "O", "U", "L", "N", "R", "N", "S", "T"
        return 1
      when "D", "G"
        return 2
      when "B","C", "M", "P"
        return 3
      when "F", "H", "V", "W", "Y"
        return 4
      when "K"
        return 5
      when "J", "X"
        return 8
      when "Q", "Z"
        return 10
      end
    end


    def self.score(word)
      word_array=word.split(//)
      sum = 0
      word_array.each do |letter|
        sum += letter_score(letter)
      end
      return sum
    end
  end
end
