module Scrabble

  SCORES = {
    a: 1,
    b: 3,
  #   c: ,
  #   d: ,
  #   e: ,
  #   f: ,
  #   g: ,
  #   h: ,
  #   i: ,
  #   j: ,
  #   k: ,
  #   l: ,
  #   m: ,
  #   n: ,
  #   o: ,
  #   p: ,
  #   q: ,
  #   r: ,
  #   s: ,
  #   t: ,
  #   u: ,
  #   v: ,
  #   w: ,
  #   x: ,
  #   y: ,
  #   z:
  }

  class Scrabble
    def self.score(word)
      #sanitize input
      if word.is_a? String
        #create variable for word score
        word_score = 0
        #split word into array of characters - downcased
        word_array = word.downcase.split("")
        #convert letters to symbols
        #look up score for each symbol and add it to word score variable
        word_array.each do |letter|
          word_score += SCORES[letter.to_sym]
        end
        #return word score variable
        return word_score
      else
        return "Error message"
      end
    end

    def self.highest_score_from(array_of_words)
      word_hash = {}

      #sanitize input
      if array_of_words.is_a? Array
        #run the self.score method on each word in the array
        #store the word and the score in a hash (or maybe an array)
        array_of_words.each do |word|
          word_hash[word] = Scrabble::Scrabble.score(word)
        end
        #retrieve the highest scoring word
        word_hash.each do |k,v|
          return k if v == word_hash.values.max
        end
      else
        return "Error message"
      end
    end
  end

end
