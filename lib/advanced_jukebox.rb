require "pry" #binding.pry

my_songs = {
"Go Go GO" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/abcher/Development/code/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3',
}

def help
  puts
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"  
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  puts 
end

def list(my_songs)
  my_songs.keys.each do |song_name|
    puts song_name
  end
end

def play(my_songs)
  loop do 
    puts "Please enter a song name, no numbers please!"
    song_name =   gets.chomp.delete('\\"')
    if my_songs.has_key?(song_name)
      system "open #{my_songs[song_name]}"
      puts "♬ Playing: #{song_name} ♬ "
      puts 
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox 
  abort("...Goodbye")
end

def run(my_songs)
  help
  loop do 
    puts "Please enter a command:"
    feed = gets.chomp
    case feed
      when "help"
        help
      when "list"
        list(my_songs)
      when "play"
        play(my_songs)
      when "exit"
        exit_jukebox
    end
   end  
end

