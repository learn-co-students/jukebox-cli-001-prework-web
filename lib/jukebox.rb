require 'pry'

songs = [
  "1. Phoenix - 1901",
  "2. Tokyo Police Club - Wait Up",
  "3. Sufjan Stevens - Too Much",
  "4. The Naked and the Famous - Young Blood",
  "5. (Far From) Home - Tiga",
  "6. The Cults - Abducted",
  "7. Phoenix - Consolation Prizes",
  "8. Harry Chapin - Cats in the Cradle",
  "9. Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)



def help
  puts "help"
  puts "list - displays list of possible songs"
  puts "play - plays the song that you choose"
  puts "exit - exits the program"
end

def list(songs)
  puts songs
end

def play(songs)
  puts "Enter your song"
  selection = gets.chomp
  songs.each_with_index do |song,index|
    if song.downcase == selection.downcase
      puts "Now Playing: #{song}"
    elsif index + 1 == selection.to_i
      puts "Now Playing: #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  action = ""
  while action
    puts "Please enter a command:"
    action = gets.chomp.downcase.strip
      if action == "play"
        list(songs)
        play(songs)
      elsif action == "help"
        help
      elsif action == "list"
        list(songs)
      elsif action== "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end

run(songs)