songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee8 - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  list(songs)
  puts
  puts "What song do you want to play. Enter song name or number"
  song_pick = gets.chomp
  if song_pick.to_i.is_a?(Integer) && song_pick.to_i != 0
    if song_pick.length == 1
    puts songs[song_pick.to_i - 1]
    else
      puts 'Invalid input, please try again'
    end
  else
    if songs.include?(song_pick)
      puts songs.find {|song| song == song_pick}
    else
      puts 'Invalid input, please try again'
    end
  end
end

# play songs

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  puts "Please enter a command:"
  choice = gets.chomp
  until choice == 'exit'
    case choice

    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    else
      puts 'Invalid input, please try again'
    end
  puts "Please make a selection help, list, or play."
  choice = gets.chomp
  end
exit_jukebox
end
