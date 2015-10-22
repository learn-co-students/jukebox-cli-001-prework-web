def all_songs
  [
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
end

def say_hello(name)
  "Hi #{name}!"
end

def help
  puts <<-TEXT
Possible commands are:
  help      gives information on various commands.
  play      accepts the name of a song, eg.  'Playing Phoenix - 1901', and plays it.
  list      lists the songs available for play.
  exit      quits the program.
TEXT
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1} - #{song}"}
  puts
end

def play(songs)
  list(songs)
  print "Please enter a song choice: "
  command = gets.chomp
  if command.match(/\d+/) && command.to_i > 0
    unless songs[command.to_i - 1].nil?
      puts songs[command.to_i - 1]
    else
      puts "Invalid input, please try again."
    end
  else
    if songs.include?(command)
      puts command
    else
      puts "Invalid input, please try again."
    end
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def wait_for_command
  loop do
    print "Please enter a command: "
    command = gets.chomp.downcase.strip
    case command
      when 'exit'
        exit_jukebox
        break
      when 'help'
        help
      when 'list'
        list(all_songs)
      when 'play'
        play(all_songs)
    end
  end
end

def run(songs)
  puts "Please enter your name:"
  users_name = gets.chomp
  puts say_hello(users_name)
  puts "Here are the commands available to you."
  help
  wait_for_command
end