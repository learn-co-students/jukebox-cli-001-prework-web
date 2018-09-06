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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, num| puts "#{num+1}. #{song}" }
end

def play(songs)
  list_of = {}
    songs.each_with_index do |title, num|
        list_of[(num+1).to_s] = title
    end
  puts "Please enter a song name or number:"
  play_song = gets.chomp
    if list_of.keys.include?(play_song) == true || list_of.values.include?(play_song) == true
      list_of.each do |song_num, song_name|
        if play_song == song_num || play_song == song_name
          puts "Playing #{song_name}"
        end
      end
    else
      puts "Invalid input, please try again" 
    end
end

def exit_jukebox
  puts "Goodbye."
end
      
def run(songs)
  help 
  what_command = "" 
  until what_command == "exit" do
  puts "Please enter a command:"
  what_command = gets.chomp
    case what_command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
  end
exit_jukebox
end