require 'pry'

def play_scrabble
  tilebag = Scrabble::TileBag.new
  puts "Welcome to Anagram Land!"
  puts "What is your name?"
  name = gets.chomp
  player1 = Scrabble::Player.new(name)
  player1.draw_tiles(tilebag)
  puts "Your Tiles: #{player1.tiles.join(", ")}"
  puts "What word do you want to play?"
  word = gets.chomp
  player1.play(word)
  binding.pry
end
