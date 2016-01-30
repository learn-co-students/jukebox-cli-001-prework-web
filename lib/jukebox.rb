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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  numbered = []
  songs.each.with_index(1) do |title, index|
  numbered << "#{index}. #{title}"
  end
  puts numbered
end

def play(songs)
  a=*(1..10)
  phrase = ""
  puts "Please enter a song name or number:"
  users_request = gets.chomp
              #songs.inlude?("users_request") || [1..10].inlude?("users_request")  ? puts "Playing <song name>" : puts "Invalid input, please try again"
    if songs.include?("#{users_request}")
      puts "Playing #{users_request}"
    elsif a.include?(users_request.to_i)
      phrase << songs[(users_request.to_i-1)]  
      puts "Playing #{phrase}"
    else
      puts "Invalid input, please try again"  
    end  
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  users_help_response = ""
  until users_help_response == "exit" do
    puts "Please enter a command:"
    users_help_response = gets.chomp
    if users_help_response == "list"
      list(songs)
    elsif users_help_response == "play"
      play(songs)
    else #users_help_response == "help"    
      help
    end  
  end
  exit_jukebox  


end  