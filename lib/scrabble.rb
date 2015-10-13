# module Scrabble
#   class Scrabble
#     attr_accessor :scores
#
#     def initialize
#       @scores = []
#     end
#   end
#
# end

class Scrabble
  def score(word)
    @score = 0
    word.length.times do |index|
      case word[index].upcase
      when "A","E","I","O","U","L","N","R","S","T"
        @score += 1
      when "D","G"
        @score += 2
      when "B","C","M","P"
        @score += 3
      when "F","H","V","W","Y"
        @score += 4
      when "K"
        @score += 5
      when "J", "X"
        @score += 8
      when "Q", "Z"
        @score += 10
      end
    end
    return @score
      #word[index]
  end

  def highest_score_from(array_of_words)
  end
end
