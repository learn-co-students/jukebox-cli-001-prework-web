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

def run(songs)
  puts "Please enter a command:"
  command = gets.downcase.strip
  case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      run(songs)   
  end
end

def help
  puts "I accept the following commands:"
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  selection = gets.downcase.strip
  songs.each_with_index do |song, index|
    if selection == song.downcase || selection.to_i == index + 1
      puts song
      # return
    else puts "Invalid input, please try again"
    end 
  end
end

def exit_jukebox
    puts "Goodbye."
    return
end