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
  attr_accessor :player_words, :score
  def initialize
    @player_words = []
  end

  def score(word)
    #if !@player_words.include?(word)
    @player_words.push(word)
    #end
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
    sorted_array = array_of_words.sort_by {|word| score(word)}
    at_max = true
    highest_scored_words = []
    while at_max
      index = -1
      highest_scored_words.push(sorted_array[index])
      index -= 1
      if score(sorted_array[index-1]) > score(sorted_array[index])
        at_max == false
      end
    end
    highest_scored_words.sort_by! {|word| word.length}
    return highest_scored_words[-1]
  end
end
