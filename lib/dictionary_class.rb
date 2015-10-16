module Scrabble
  class Dictionary
    def self.word_in_dictionary(guess)
      d = open("./lib/dictionary.txt", "r")
      d.each_line do |line|
        if guess != line
          return false
        end
      d.close
      end
    end
  end
end
