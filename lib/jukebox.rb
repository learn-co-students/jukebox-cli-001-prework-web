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


#commands : help, play list and exit_jukebox

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end
 

def list(songs)
  songs.each_with_index do |item ,idx|
    puts "#{idx + 1}. #{item}"
  end
end

def play(songs)

  puts "Please enter a song name or number:"
  response = gets.chomp

  songs.each do |title|
    title.split(" ").each_with_index do |word_or_num, idx|
      if response.split(" ").include?(word_or_num) || response.to_i == idx + 1
        puts "Playing #{title}"
      end
    end
  end
  puts "Invalid input, please try again"
end



def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 
  help
  puts "Please enter a command:"
  command = gets.chomp  
  loop do
      if command == "help"
        help  
        puts "Please enter a command:"
        command = gets.chomp
      elsif command == "list"
        list(songs)
        puts "Please enter a command:"
        command = gets.chomp
      elsif command == "play"
        play(songs)
        puts "Please enter a command:"
        command = gets.chomp
      elsif command == "exit"
        exit_jukebox
        break
      end
    end

end


