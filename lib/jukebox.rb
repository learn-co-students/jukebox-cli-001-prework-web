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


#-------HELP------#
def help
		puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end


#-------LIST-------#
def list(playlist)
	count = 1
	playlist.each { |song|
		puts  "#{count}. #{song}"
		count += 1
	}
end


#-------PLAY------#
def play(playlist)
	valid = false
	request = gets.chomp
	playlist.each_with_index { |item, index|
		if request == (index + 1).to_s  ||  request.downcase == item.split('-')[1].strip.downcase || request.downcase == playlist[index].downcase
			puts item
			valid = true
		end
	}
	puts "Invalid input, please try again" if valid == false
end


#-------EXIT ------#
def exit_jukebox
	puts "Goodbye"
end

#------RUN-------#
def run(songs)
	loop do
		puts "Please enter a command:"
		entry = gets.chomp.downcase
		if entry == "help"
			help
		elsif entry == "list"
			list(songs)
		elsif entry == "play"
			play(songs)
		elsif entry == "exit"
			break
		else
			puts "Sorry, I didn't understand that."
		end
	end
end


#-----EXECUTE-----#
run(songs)
exit_jukebox





