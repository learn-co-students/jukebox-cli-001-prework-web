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
  songs.each_with_index do |song,idx|
    puts "#{idx}: #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if (song =~ /\A\d+\z/ ? true : false) == false && songs.include?(song)
    	puts "Playing #{song}"
 elsif (song =~ /\A\d+\z/ ? true : false) == true && songs.include?(songs[song.to_i - 1 ])
    puts "Playing #{songs[song.to_i - 1]}"
 else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  puts "Please enter a command:"
  user_response = gets.chomp
  if user_response == "exit"
    exit_jukebox()
  else
  	until user_response == "exit"
  			if user_response == "play"
    			play(songs)
    			puts "Enter command:"
  		user_response = gets.chomp
  			elsif user_response == "list"
    			list(songs)
    			puts "Enter command:"
  		user_response = gets.chomp
  			elsif user_response == "help"
    			help()
    			puts "Enter command:"
  		user_response = gets.chomp
  			end
    end
    exit_jukebox()
  end
end
