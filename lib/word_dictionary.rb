require 'ruby-dictionary'

# We have to call this WordDictionary because Dictionary is used in the gem as a key word
class WordDictionary
  def initialize

    @dictionary = Dictionary.from_file('./lib/system_words.txt')
  end

  def check_word(word)
    exists = @dictionary.exists?(word)
    if exists == true
      if word[0].upcase == word[0]
        puts "Sorry, words spelled with a capital letter cannot be used."
        return false
      elsif word.include? "-"
        puts "Sorry, words with a hyphen are not accepted."
        return false
      elsif word.include? "'"
        puts "Sorry, words with an apostrophe are not accepted."
        return false
      else return true
      end
    else
      return false
    end
  end
end
