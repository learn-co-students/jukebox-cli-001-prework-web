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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index { |title, idx| puts "#{idx+=1}. #{title}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if user_input.to_i > 0 && user_input.to_i <= songs.length
    user_input = user_input.to_i
    puts "Playing #{songs[user_input -1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

#satisfies the tests but requires further work
def run(songs)
  puts "Please enter a command:"
  case gets.chomp
    when "help"
    help
    when "list"
    list(songs)
    when "play"
    play(songs)
    when "exit"
    exit_jukebox
    else
    puts "Invalid input, please try again"
  end
end