songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
  help = <<-HELP
I accept the following commands:
-- help : displays this help message
-- list : displays a list of songs you can play
-- play : lets you choose a song to play
-- exit : exits this program
HELP

  puts help
end


def list(songs)
  songs.each_with_index do |song_name, index_num|
    puts "#{index_num+1}. #{song_name}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  song_select = gets.chomp

  if songs.include?(song_select)
    puts "Playing #{song_select}"
  elsif song_select.to_i.to_s == song_select && songs[song_select.to_i]
    puts "Playing #{songs[song_select.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.downcase
    case user_input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
     exit_jukebox

    else
      help
    end
  end
