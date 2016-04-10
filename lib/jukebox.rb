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

def list(songs)
 songs.each_with_index do |val,index| puts " #{index} , #{val}"
end
end

def play(songs)
  puts "Please enter a song name or number:"
  respond = gets.chomp
   songs.each_with_index do |rola, index|
  if rola== respond || respond.to_i== index.to_i+1
    puts "Playing #{rola}"
  else
    puts "Invalid input, please try again"
end
end
end
 #MIRAR RESPUESTA 80 Y 86

 def exit_jukebox 
   puts 'Goodbye'
 end

def run(songs)
  help
  puts "Please enter a command:"
   response = gets.chomp
   if response == "help"
    help
  elsif response == "play"
    play
  elsif response == "list"
    list
  elsif response == "exit"
    exit_jukebox
  else run
end      
end



























