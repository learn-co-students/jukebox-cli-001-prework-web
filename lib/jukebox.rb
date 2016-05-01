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

#---------  Provides Instructions for Jukebox -------#
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

#----------  Plays Song ---------#
def play(songs)
  puts "please enter a song name or number:"
  input = gets.chomp
  song = ''
  songs.each_with_index do |item, index|
    if (index+1).to_s == input || item.to_s == input
      song = item.to_s
    end
  end
  if song != ''
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

#----------  Lists Song ---------#
def list(songs)

  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

#----------  Exit Jukebox Program ---------#
def exit_jukebox
  puts "Goodbye"
end

#----------  Run Jukebox Program ---------#
def run(songs)
  puts "Please enter a command:"
  input = gets.chomp

    if input != exit
      if input == "list"
        list(songs)
      elsif input == "help"
        help
      else input == "play"
        play(songs)
      end
    else
      exit_jukebox
    end

end








