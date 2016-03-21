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

  puts %Q{I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program}

end

def list(songs)

  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end

end


def play(songs)
 puts "Please enter a song name or number:"

 choice=gets.chomp

  if (choice.to_i.is_a?(Integer) && choice.to_i.between?(1,9))
    puts "Playing #{songs[choice.to_i-1]}"
  elsif songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)

  
  help

while true
  puts "Please enter a command:"
  response=gets.chomp
  case response
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
    next
  end 

end
end





