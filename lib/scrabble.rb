class Scrabble
  def letter_score(letter)
    case letter.downcase
    when "a", "e", "i", "o", "u", "l", "n", "r", "s", "t"
      return 1
    when "d", "g"
      return 2
    when "m", "b", "c", "p"
      return 3
    when "f", "h", "v", "w", "y"
      return 4
    when "k"
      return 5
    when "j", "x"
      return 8
    when "q", "z"
      return 10
    end
  end
  #SCORE = 0
  def word_score(word)
    score = 0
    word.split("").each do |letter|
      letter = letter_score(letter)
      score += letter
    end
    return score
  end
end
