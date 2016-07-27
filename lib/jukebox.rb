def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
   puts "- list : displays a list of songs you can play"
   puts "- play : lets you choose a song to play"
   puts "- exit : exits this program"
end

def play(playlist)    
   puts "Please enter a song name or number:"
   user_input = gets.chomp

   song = playlist.select.with_index(1){|item, index|
     user_input.to_i == index || user_input == item
   }

   if song.empty?
   	 puts "Invalid input, please try again"
   else
        puts "Playing #{song.join}"
   end
end

def list(playlist)
	playlist.each.with_index(1){|song, index|
      puts "#{index}. #{song}"
	}
end

def exit_jukebox
	puts "Goodbye"
end

def run(data)
	response = ""
    help
	until response == "exit"
	  puts "Please enter a command:"
	  response = gets.chomp

	 case response
	 	when "help"
	 		help
	 	when "list"
	 		list(data)
	 	when "play"
	 	    play(data)	
	 	when "exit"
	 		exit_jukebox
	 	end
	end	
end










