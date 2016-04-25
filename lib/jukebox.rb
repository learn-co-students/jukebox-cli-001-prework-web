#! /usr/bin/ruby2.2

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
	puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(song_array)
	song_array.each_with_index do |song, index|
		puts "#{index+1}. #{song}"
	end
end

def play(song_array)
	puts "Please enter a song name or number:"
	song = gets.strip
	song_index = song.to_i
	if song_array.include?(song)
		puts "Playing #{song}"
	elsif (1..9).include?(song_index)
		puts "Playing #{song_array[song_index-1]}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run(songs_array)
	help
	while 1 < 2
		puts "Please enter a command:"
		command = gets.strip
		case command
		when "play"
			play(songs_array)
		when "help"
			help
		when "list"
			list(songs_array)
		when "exit"
			exit_jukebox
			break
		else
			puts "Invalid command."
			help
		end
	end
end
