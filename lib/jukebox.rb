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
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
song = 0
while song < my_songs.length
  puts "#{song}. #{my_songs[song]}"
  song += 1
end

end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  response = gets.chomp
if my_songs.include?(response) == true
  puts "#{response}"
elsif response.to_i <= my_songs.length
  puts "#{my_songs[response.to_i - 1]}"
end
  puts "Invalid input, please try again"
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
help
puts "Please enter a command:"
response = gets.chomp

while response != "exit"
  if response == "play"
    play(my_songs)
  elsif response == "list"
    list(my_songs)
  elsif response == "help"
    help
  end
  exit
  break
  end
end
