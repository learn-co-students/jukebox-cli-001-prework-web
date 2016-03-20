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

#In lib/jukebox.rb we'll create a help, play, list and exit_jukebox method.

#run method

def help
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(abc)
  abc.each {|i| puts "#{abc.index(i)+1}. #{i}"}
end

#This method also takes in an argument of the songs array. It first puts out the prompt: "Please enter a song name or number:". It then stores the user's response using gets.chomp.

#If the user's response is a valid song number or song name, the method should puts out: "Playing <song name>". Otherwise, it should puts out: "Invalid input, please try again".

def play(abc)
  puts"Please enter a song name or number:"
  xyz=gets.chomp
  if xyz.to_i>0 and xyz.to_i<=abc.size
    puts "PLaying #{abc[xyz.to_i-1]}"
  elsif abc.include?(xyz)
    puts "PLaying #{xyz}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  abc=""
  while abc!="exit"
    puts "Please enter a command: "
    abc=gets.chomp
    if abc=="help"
      help
    elsif abc=="list"
      list(songs)
    elsif abc=="play"
      play(songs)
    end
  end
  exit_jukebox
end










