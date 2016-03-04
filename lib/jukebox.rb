require 'pry'

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
  puts "I accept the following commands:" \
      "\n- help : displays this help message" \
      "\n- list : displays a list of songs you can play" \
      "\n- play : lets you choose a song to play" \
      "\n- exit : exits this program" \
end

def play(songs)
  puts "Please enter the song you want to play"
  song_choice = gets.chomp

  if song_choice.split("").all?{ |character| character =~ /\d/ }

    song_choice = songs[song_choice.to_i - 1]

  end

  song_choice = "Invalid input, please try again" if song_choice.nil? ||
                !(songs.include?(song_choice))

  puts "Playing #{song_choice}"
end

def list(songs)
  songs.each_with_index do |song, index|

    puts "#{index}. #{song}"

  end
end

def exit_jukebox
  puts "Goodbye"
  exit
end














