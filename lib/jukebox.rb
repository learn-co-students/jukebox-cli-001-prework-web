songs = [
  "Phoenix - 1901",	#0
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
	songs.each_with_index do |song, index|
		puts "#{index + 1}. #{song}"
	end
end


def play(songs)
	match = false

	puts "Please enter a song name or number:"

	songChoice = gets.chomp

	songs.each_with_index do |song, index|
		if songChoice == song || songChoice.to_i == index + 1
			puts "Playing #{song}"
			match = true
		end
	end

	puts "Invalid input, please try again" if match == false
end


def exit_jukebox
	puts "Goodbye"
end


def run(songs)
	command = ""

	help

	puts "Please enter a command:"

	until command == "exit"
		command = gets.chomp
		case command
		when "exit"
			exit_jukebox
			return
		when "help"
			help
		when "list"
			list(songs)
		when "play"
			play(songs)
		else
			puts "Invalid command"
		end
	end
end
