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

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def run(songs)
  puts "Please enter a command"
  user_input = gets.chomp.downcase
  while user_input != "exit" do  
    if user_input == "help"
      help
      user_input = gets.chomp.downcase
    elsif user_input == "play"
      play(songs)
      user_input = gets.chomp.downcase
    elsif user_input == "list"
      list(songs)
      user_input = gets.chomp.downcase

    end
  end
  exit_jukebox
end

def help
  puts "help, list, play, exit"

end

def list(songs)
  puts songs
end

def play(songs)
  puts "Enter a song name or number"
  user_choice = gets.chomp
  if user_choice.to_i >= 1
    user_choice = (user_choice.to_i) - 1
    if user_choice > songs.length - 1
      puts "Invalid input, please try again"
    end
    songs.each_index do |i|
      if i == user_choice
        puts "Playing #{songs[i]}"
      end
    end
  elsif 
    songs.each do |song|
      if songs.include?(user_choice) == true
        puts "Playing #{user_choice}"
      elsif 
        puts "Invalid input, please try again."
      end
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end
