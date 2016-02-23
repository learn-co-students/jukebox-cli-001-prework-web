#require "pry"


my_songs = {
 "Go Go GO" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/astarta/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
}


def help
  puts 
  puts "I accept the following commands:"
  puts "- help : displays this helpfull message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts 
end


def list(my_songs)
  number = 1
  puts
  my_songs.each do |song, link|
    puts "#{number}. #{song}"
    number += 1
  end
  puts
end


def play(my_songs)
  puts "Please enter a song name"
  user_pick = gets.chomp
  wrong_song = true
  my_songs.each do |song, link|
    if user_pick == song
      puts
      puts "Playing #{song}"
      system "open #{link}"
      wrong_song = false
    elsif user_pick == "exit"
      break
    end
  end
   if wrong_song
    puts
    puts "Invalid input, please try again"
    list(my_songs) 
    play(my_songs)
  end
end 


def exit_jukebox
  puts
  puts "Goodbye"
  puts
end


def run(my_songs)
  help
  user_choice = ""
  while user_choice != "exit"
    puts
    puts "Please enter a command:"
    user_choice = gets.chomp
    case user_choice
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
      puts
    end
  end
end