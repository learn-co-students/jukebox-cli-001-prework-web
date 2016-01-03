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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exists this program"
end


def play(songs)
  puts "Which song would you like to hear?"
  choice = gets.chomp
  
  #songs.each_with_index do |song, index|
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

      when choice.to_i.to_s == choice || choice.to_i.to_s == "0"
        songs.each_with_index do |song, index|
          if index != (choice.to_i - 1)  && song.downcase.strip != choice.downcase.strip#  This needs to be a WHEN loop?
            puts "Invalid input, please try again"
          end
        end

      else
        puts "Invalid input, please try again"
      end
end
   
        
def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}\n"
  end
end

def exit_jukebox
  puts "Thanks for listening! Goodbye."
end



def run(songs)
  puts "Please enter a command:"
  selection = gets.chomp
  
  if selection == "exit"
    exit_jukebox
  else
    case selection
      when "help"
        help
        puts "Please enter a command:"
        selection = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        selection = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        selection = gets.chomp
      else
        puts "Please enter a valid command"
        puts "Please enter a command:"
        selection = gets.chomp
      end
    end
  exit_jukebox
end




