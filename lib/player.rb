require 'pry'

class Player
  attr_accessor :name, :player_words

  def initialize(name)
    @name = name
    @player_words =[]
  end

  def name
    return @name
  end

  def plays
    return @player_words
  end

  def play(word)
    @player_words.push(word)
  end

end
