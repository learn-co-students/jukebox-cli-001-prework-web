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
  help_msg = """
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
  """
  puts help_msg
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  
  if (1..songs.size).include?(user_choice.to_i)
    user_choice = user_choice.to_i - 1
    puts "Playing #{songs[user_choice]}"
  elsif songs.include?(user_choice)
    user_choice = songs.index(user_choice)
    puts "Playing #{songs[user_choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help # display help msg
  cmd = ""

  while cmd # infinite loop b/c everything except nil and false are truthy
    puts "Please enter a command:"
    cmd = gets.downcase.chomp
    case cmd # test multiiple conditions against the same value
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end




