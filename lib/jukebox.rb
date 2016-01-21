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
  puts "I accept the following commands:\n  - help : displays this help message\n  - list : displays a list of songs you can play\n  - play : lets you choose a song to play\n  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts 'Please enter a song name or number:'
  user_input = gets.chomp
  if songs.include?(user_input)
    puts "Playing #{user_input}"
  elsif
  user_input.to_i.between?(1,9)
    puts "Playing #{songs[user_input.to_i-1]}"
  else
    puts 'Invalid input, please try again'
  end
end

def run(songs)
  help
  no_input = ''

  while no_input
    puts 'Please enter a command:'
    user_input = gets.strip.downcase
    case user_input
      when 'list'
        list(songs)
      when 'play'
        play(songs)
      when 'help'
        help
      when 'exit'
        exit_jukebox
        break
    end
  end
end

def exit_jukebox
  puts 'Goodbye'
end