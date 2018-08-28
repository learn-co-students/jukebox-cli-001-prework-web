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

def list(song_list)
  song_list.each_with_index {|song,track_num| puts "#{track_num+1}. #{song}"}
end

def play(song_list)
  
  list(song_list)
  puts "Please enter a song name or number:"
  song = gets.chomp
  
  if (song.to_i >= 1 && song.to_i <= song_list.length) || song_list.any? { |track| track.downcase == song.downcase }
    if song.to_i > 0
      puts "Now Playing: #{song_list[song.to_i-1]}"
    else
      puts "Now Playing: #{song_list.find { |track| track.downcase == song.downcase}}"
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(song_list)
  
  exited = false
  help
  
  while !exited
    puts "Please enter a command:"
    command = gets.chomp
    if command.downcase == "help"
      help
    elsif command.downcase == "list"
      list(song_list)
    elsif command.downcase == "play"
      play(song_list)
    elsif command.downcase == "exit"
      exit_jukebox
      exited = true
    else
      puts "Invalid input, please try again"
    end
  end
end