require 'pry'
require "scrabble.rb"

class Player
  attr_accessor :name, :player_words

  def initialize(name)
    @name = name
    @player_words =[]
    @total_score = 0
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

  def total_score
    @player_words.each do |word|
      @total_score += Scrabble.score(word)
    end
    return @total_score
  end

end
