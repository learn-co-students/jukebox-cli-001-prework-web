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

class String
  def is_number?
    true if Float(self) rescue false
  end
end

def help
	puts "I accept the following commands:"
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, i|
		puts "#{i+1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	choice = gets.chomp
	if choice.is_number?
		choice_num = choice.to_i
		if choice_num > 0 && choice_num <= songs.size
			puts "Playing #{songs[choice_num-1]}"
		else
			puts "Invalid input, please try again"
		end
	else
		flag = false
		songs.each do |x|
			if x == choice
				puts "Playing #{choice}"
				flag = true
			end
		end
		if flag == false
			puts "Invalid input, please try again"
		end
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	puts "Please enter a command:"
	command = gets.chomp
	while command != "exit"
		case command
		when "list"
			list(songs)
		when "help"
			help
		when "play"
			play(songs)
		else
			puts "I'm sorry. That's an invalid command. Please try again."
			help
		end
		command = gets.chomp
	end
	exit_jukebox
end