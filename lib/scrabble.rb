require 'pry'

class Scrabble
  attr_accessor :player_words, :score
  def initialize

  end

  def self.score(word)
    if word.class != String
        raise ArgumentError, "Input must be a string."
    else
      word.length.times do |letter|
        if !("a".."z").to_a.include? word[letter]
            raise ArgumentError, "Input must be an alphabetical string."
        end
      end
    end

    @score = 0
    word.length == 7 ? (@score += 50) : (@score += 0)

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
  end

  def self.highest_score_from(array_of_words)
    sorted_array = array_of_words.sort_by {|word| score(word)}

    # Inspired by Jennie and Jenna's solution
    sorted_score_array = sorted_array.map do |word|
      score(word)
    end

    max_score = sorted_score_array.max
    best_words = []

    sorted_score_array.length.times do |i|
      if sorted_score_array[i] == max_score
        best_words.push(sorted_array[i])
      end
    end

    best_words.sort_by! do |word|
      word.length
    end

    if best_words[-1].length == 7
      return best_words[-1]
    else
      return best_words[0]
    end

# ------------ ORIGINAL SOLUTION ------------------------ #
    # at_max = true
    # best_words = []
    # index = -1
    #
    # while at_max == true
    #   #index -= 1
    #   if index.abs >= sorted_array.length
    #     if score(sorted_array[index]) == score(sorted_array[index+1])
    #       best_words.push(sorted_array[index])
    #       at_max = false
    #     end
    #   else
    #     best_words.push(sorted_array[index])
    #     if score(sorted_array[index]) > score(sorted_array[index-1])
    #       at_max = false
    #     end
    #   end
    #   index -= 1
    # end
    # best_words.sort_by! {|word| word.length}

    # best_words.each do |word|
    #   #puts "made it here"
    #   if word == best_words[-1]
    #     return word
    #   end
    #   word_index = best_words.index(word)
    #   if word.length < best_words[word_index+1].length
    #     #binding.pry
    #     return word
    #   end
    # end
    # return best_words[0]
# --------------- END OF ORIGINAL SOLUTION -------------------------- #





  end


end
