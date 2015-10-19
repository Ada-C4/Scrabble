require "./lib/scrabble_master"

def play_scrabble
  tilebag = Scrabble::TileBag.new
  puts "~~~~Welcome to Anagram Land!~~~~\n\n"
  puts "The following commands are valid: 'pass', 'discard-tiles'."
  puts "The game ends when a player reaches 100 points!"

  puts "How many players are there?"
  print " > "
  num_players = gets.chomp

  player = {}

  if num_players.to_i.to_s == num_players && num_players.to_i > 0
    num_players = num_players.to_i
    tilebag.tile_bag * num_players

    num_players.to_i.times do |i|
      puts "What is the name of player #{i + 1}?" if num_players > 1
      puts "What is your name?" if num_players == 1
      print " > "
      name = gets.chomp

      player[i] = Scrabble::Player.new(name)
      player[i].draw_tiles(tilebag)
    end
  else
    puts "That is not a valid number."
    exit
  end

  while true
    num_players.to_i.times do |i|
      puts "\n~~#{player[i].name.upcase}'S TURN~~\n\n"
      puts "Tiles: #{player[i].tiles.join(", ")}"
      puts "What word do you want to play?"
      print " > "
      word = gets.chomp

      while true

        if word.upcase == "DISCARD-TILES"
          player[i].tiles = []
          player[i].draw_tiles(tilebag)
          puts "New tiles: #{player[i].tiles.join(", ")}"
          break
        end

        if word.upcase == "PASS"
          break
        end

        if Scrabble::WordDictionary.lookup(word) == true
          player[i].play(word)
          player[i].draw_tiles(tilebag)
          puts "\n#{player[i].name}'s current score is #{player[i].total_score}."
          break
        else
          puts "\nThat's not a valid word."
        end

          print " > "
          word = gets.chomp
      end

      if player[i].won?
        puts "\n#{player[i].name} won! #{player[i].name}'s highest scoring word was #{player[i].highest_scoring_word} for #{player[i].highest_word_score} points."
        break
      end
    end
  end
end

play_scrabble
