require 'pry'


def say_hello(name)
  puts "Hi, #{name}!"
end
def all_songs

  ["Phoenix - 1901",
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




def list(songs)

  songs.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"
    
  end

end

def help
  puts "--type 'help' to see a list of commands"
  puts "--type 'list' to see a list of songs"
  puts "--type 'play' and then the song you wish to hear to play that song"
  puts "--type 'exit' to quit"

end

def exit_jukebox

  puts "Goodbye"
end



def play(songs)
  print "Enter song: "
  arguments = gets.chomp
  #binding.pry
if arguments.to_i.to_s == arguments ##check if index number
  if arguments.to_i <= songs.size && arguments.to_i > 0 ##check if index number is in the array
    puts "Playing " + songs[arguments.to_i-1]
  else
    puts "Invalid input, please try again"
  end
else
  if songs.include?(arguments)
    puts "Playing #{arguments}"
  else
    puts "Invalid input, please try again"
  end

end
end


def run(songs)
  #help
  loop do
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
        exit_jukebox
        break
      else
        puts "Please enter a valid command. Type \"help\" to see all options."
    end
  end
end









