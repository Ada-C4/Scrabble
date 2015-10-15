require "./lib/scrabble"

class Player < Scrabble::Scrabble

  attr_reader :name, :plays, :total_score
  def initialize(name)
    @name = name
    @plays = []
    @total_score = []
  end

  def play(word)
    @plays.push(word)
    score = word_score(word)
    @total_score.push(score)
    return "So far you have played the following words: #{@plays}"
  end

def total_score
  word
end
end
