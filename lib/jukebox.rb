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


def help_output
  help_output = [
    "I accept the following commands:",
    "- help : displays this help message",
    "- list : displays a list of songs you can play",
    "- play : lets you choose a song to play",
    "- exit : exits this program"
  ]
end


def run(songs)
  #while true do
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "help"
        help()
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        #break
      else
        puts "Not a valid command"
    end
 # end
end

def exit_jukebox
  puts "Goodbye"
end

def help
  help_output.each do |x|
    puts x
  end
end

def list(songs)
  songs.each_with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..9).include? input.to_i
    puts "Playing #{songs[input.to_i-1]}"
  elsif input.is_a? String
    if songs.include? input
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  else
     puts "Invalid input, please try again"
  end
end

