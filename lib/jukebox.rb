require 'pry'
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
	puts   "- help : displays this help message\n
			- list : displays a list of songs you can play\n
			- play : lets you choose a song to play\n
			- exit : exits this program\n"
end

def list(song)

	song.each.with_index(1) do |value, index|
		index += 1
		puts "#{index}. #{value}"
	end
end

def play(song)
	puts "Please enter a song name or number:"
	user_choice = gets.chomp
	song.each.with_index(1) do |value, index|
		if value == user_choice.to_s || index == user_choice.to_i
			puts "Playing #{value}"
		else
			puts "Invalid input, please try again"
		end
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(song)
	puts "Please enter a command:"
	user_select = gets.chomp.to_s
	case user_select
	when "play"
		play(song)
	when "list"
		list(song)
	when "help"
		help
	when "exit"
		exit_jukebox
	end
end


