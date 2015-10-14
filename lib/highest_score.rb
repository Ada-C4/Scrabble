require "./score.rb"

module Scrabble
  class ScrabbleGame
    # letter_scores = {#a hash pairing each letter with each score}

    # self.score(word) #person who types out the hash may as well write this method, since they'll be using that hash
    #Sarah T is writing the above
    def self.highest_score_from(array_of_words)
      #for each word in array, call Sarah's method to get the score
      def
        wordscore_array = []
        array_of_words.each do |w|
          score = self.score(w)
          wordscore_array.push(score)
        end
        return wordscore_array
      end
      
    end
  end

end
