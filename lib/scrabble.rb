class Scrabble
  def letter_score(letter)
    case letter
    when "a" #E, I, O, U, L, N, R, S, T
      return 1
    when "m", "b", "c", "p"
      return 3
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
