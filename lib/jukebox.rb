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
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp

    case
      when choice.to_i.to_s == "0"  #This checks if the choice is a string
        songs.each_with_index do |song, index|
          if song.downcase.strip == choice.downcase.strip
            puts "Playing #{song}"
          else
            puts "Invalid input, please try again"
          end
        end

      when choice.to_i.to_s == choice  #This checks if the choice is an integer
        songs.each_with_index do |song, index|
          if index == (choice.to_i - 1)  #  This needs to be a WHEN loop?
            puts "Playing #{song}"
          else
            puts "Invalid input, please try again"
          end
        end

      else
        puts "Invalid input, please try again"
      end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.chomp

  if user_input == "exit"
    exit_jukebox

  else
    case user_input
    when "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp

    when "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp

    when "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      puts "Please enter a valid command"
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end
end
