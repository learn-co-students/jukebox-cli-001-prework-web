# Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
# make sure to edit the value of each key to replace < path to this directory >
# with the correct path to this directory on your computer
#
my_songs = {
"Go Go GO" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\01.mp3',
"LiberTeens" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\02.mp3',
"Hamburg" =>  'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\03.mp3',
"Guiding Light" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\04.mp3',
"Wolf" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\05.mp3',
"Blue" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\06.mp3',
"Graduation Failed" => 'C:\Users\Jinxie\Nitrous\learn-co-public-students-022-5868\juliemarin-001-prework-web-164775\labs\jukebox-cli-001-prework-web\audio\Emerald-Park\07.mp3'
}

def help
  puts @text = <<HELP
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
HELP
end



def list(my_songs)
  my_songs.keys.each_with_index {|title, index|  puts "#{index + 1}. #{title}"}
end


def play(my_songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if my_songs.include?(user_response)
    puts "Playing #{user_response}"
    system "start itunes \"#{my_songs[user_response]}\""
  elsif user_response.to_i != 0 && my_songs.keys[user_response.to_i - 1] != nil
    puts "Playing #{my_songs.keys[user_response.to_i - 1]}"
    system "start itunes \"#{my_songs[my_songs.keys[user_response.to_i - 1]]}\""
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  user_input = 0
  while user_input != "exit"
      if user_input == "list"
        list(my_songs)
      elsif user_input == "play"
        play(my_songs)
      elsif user_input == "help"
        help
      elsif user_input == 0
      else
        puts "Invalid input, please try again!"
      end
      puts "Please enter a command:"
      user_input = gets.chomp
  end
  exit_jukebox
end
