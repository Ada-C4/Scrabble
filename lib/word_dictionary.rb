require 'ruby-dictionary'

# We have to call this WordDictionary because Dictionary is used in the gem as a key word
class WordDictionary
  def initialize

    @dictionary = Dictionary.from_file('./lib/system_words.txt')
  end

  def check_word(word)
    @dictionary.exists?(word)
  end
end
