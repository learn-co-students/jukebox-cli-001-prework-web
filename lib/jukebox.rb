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
instructions =
"I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

puts instructions
end

def play(songs)
  puts "Please enter a song name or number:"
  song_id = gets.chomp

  result = songs.select.with_index(1) do |song, i|
    song_id.to_i == i || song_id == song
  end

  if result.empty?
    puts "Invalid input, please try again."
  else
    puts "Playing #{result.join}"
  end

end

def list(songs)
  songs.each.with_index(1) do |song, i|
    puts "#{i}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  command = ""

  until command == "exit" do
    puts "Please enter a command:"
    command = gets.chomp

    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      break
    end
  end

  exit_jukebox
end
