require "./lib/scrabble"

class Player < Scrabble::Scrabble

  attr_reader :name, :plays, :total_score
  def initialize(name)
    @name = name
    @plays = []
    #@total_score = total_score
  end

  def play(word)
    @plays.push(word)
    #score = word_score(word)
    #@total_score.push(score)
    return @plays
  end

  def total_score
    total = 0
    all_words = @plays
    all_words.each do |word|
      word_score(word)
      total += word_score(word)
    end
      return total
  end

  def won?
    if total_score > 100
      return true
    end
  end
end
