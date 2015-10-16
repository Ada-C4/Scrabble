require "./lib/scrabble.rb"
require "./lib/player.rb"

module Scrabble
  class Dictionary
    attr_reader :language, :file

    def initialize(language = :english)
      @language = language
    end

    def check_word(word)
      dict_file = File.open("./lib/puzzler_list.txt", "r")
      good_word = 0
      dict_file.each_line do |line|
        if word  == line.strip
          good_word += 1
        end
      end

      if good_word > 0
        return true
      else
        return false
      end

    end

  end



end
