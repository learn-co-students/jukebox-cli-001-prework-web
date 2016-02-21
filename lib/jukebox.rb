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
  def run(songs)
    puts "Please enter a command:"
    input=gets.chomp.downcase
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    end
  end
def help
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end
def list (songs)
  songs.each {|songs| puts "#{songs}"}
end
def exit_jukebox
puts "Goodbye"
end
def play(songs)
  input=gets.chomp
  songs.each.with_index(1) do |song,index|
    if input.to_i==index || input.capitalize.to_s==song
      puts "#{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end