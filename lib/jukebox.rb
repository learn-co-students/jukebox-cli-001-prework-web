require 'pry'

def song_list
  [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight",
]
end

def help_prompt
  puts "I accept the following commands"
  puts "- help : displays this message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def help 
  puts "I accept the following commands"
  puts "- help : displays this message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  count = 1
    songs.each do |x|
      puts "#{count}. #{x}"
      count += 1
    end

end

def play(songs) # devil method
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif choice.to_i != 0 && choice.to_i <= 9
    puts "Playing #{songs[choice.to_i - 1]}"
  else
    puts "Invalid input, please try again."
  end
end



def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  prompt = "Please enter a command:"
  puts prompt
    while command = gets.chomp
    case command 
    when "list"
      list(songs)
      puts prompt
    when "play"
      play(songs)
      puts prompt
    when "help"
      help_prompt
      puts prompt
    when "exit"
      exit_jukebox
      break
    end
  end
end



