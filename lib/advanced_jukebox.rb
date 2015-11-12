require 'pry'

songs = {
 "Go Go GO" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/AnnaFractuous/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
}


def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end


def list(songs)
  songs.keys.each_with_index { |song, idx| puts "#{idx + 1}. #{song}"}
end


def play(songs)
  list(songs)
  puts "Please enter a song name"
  selection = gets.strip
  if songs.keys.include?(selection)
    system "open #{songs[selection]}"
  else
    puts "Invalid choice, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  
  loop do
    puts "Please enter a command"
    answer = gets.strip

    case answer
      when 'help'
        help
      when 'list'
        list(songs)
      when 'play'
        play(songs)
      when 'exit'
        exit_jukebox
        break
      else
        puts "Please enter a valid command."
    end
  end
end
