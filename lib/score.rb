module Scrabble

  class Scrabblegame

# returns the total score value for the given word.
#The word is input as a string (case insensitive).


    # def word_string(word)
    #   if word.is_a? String
    #     return [self]
    #   end
    # end
# by using self, you won't have to create a new Scrabblegame instance to use it.
# Now I can just call Scrabble::Scrabblegame.score (don't have to "new" it up)
    def self.score(word)
      value = Hash.new
      value["a"] = 1
      value["b"] = 3
      value["c"] = 3
      value["d"] = 2
      value["e"] = 1
      value["f"] = 4
      value["g"] = 2
      value["h"] = 4
      value["i"] = 1
      value["j"] = 8
      value["k"] = 5
      value["l"] = 1
      value["m"] = 3
      value["n"] = 1
      value["o"] = 1
      value["p"] = 3
      value["q"] = 10
      value["r"] = 1
      value["s"] = 1
      value["t"] = 1
      value["u"] = 1
      value["v"] = 4
      value["w"] = 4
      value["x"] = 8
      value["y"] = 4
      value["z"] = 10

      letters = word.downcase.split("")

      # array.each { |a| sum+=a }

      word_score = 0

      letters.each do |n|
        word_score += value[n]
      end

      return word_score
    end

  end
end

# def score(word)

# def self.score(word)
#   word = gets.chomp.to_s.upcase
#   word.push(@word_array)
#   return score
#
# end
# end
# end
