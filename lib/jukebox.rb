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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(list)
     list.each_with_index do |song,index|
       puts "#{index+1}. #{song}"
     end
end

def play(list)
  puts "Please enter a song name or number:"
  answer=gets.chomp
  ansnum=(answer.to_i)-1
       if list.include?(answer)
         puts "Playing #{answer}"
       elsif ansnum <= list.length && ansnum >=0
            puts "Playing #{list[ansnum]}"
       else
         puts "Invalid input, please try again"
      end
end





def exit_jukebox
 puts "Goodbye"
end

def run(songs)
  help
  command=""
until command == "exit"
  puts "Please enter a command:"
  command=gets.chomp
  case command
  when "list"
  list(songs)
  when "play"
  play(songs)
  when "help"
  help
  when "exit"
  exit_jukebox
  else
  puts "Invalid command. Please try again:"
  help
  end
end

end