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
  puts "  I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(list_of_songs)
  list_of_songs.each_with_index do |song, index|
    number = index + 1
    puts "#{number}. #{song}"
  end
end

def play(list_of_songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if list_of_songs.include?(choice)
    puts "Playing #{choice}"
  elsif choice.to_i <= list_of_songs.length && choice.to_i > 0
    song_choice = list_of_songs[choice.to_i - 1]
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(list_of_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  
  until response == "exit"
    if response == "help"
      help
      break
    elsif response == "play"
      play(list_of_songs)
      break
    elsif response == "list"
      list(list_of_songs)
      break
    else 
      exit_jukebox
      break
    end
  end

  exit_jukebox
      
end