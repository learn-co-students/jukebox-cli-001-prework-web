#!/usr/bin/env ruby

require_relative "../lib/advanced_jukebox"

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

def run(my_songs)
  help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
 

def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def play(songs)
  input = gets.chomp
  output = "Invalid input, please try again"
  songs.each_with_index do |song, index|
    if input == song || input == "#{index + 1}"
      output = song
      break
    end
  end
  puts output
end

def list(songs)
  songs.each_with_index do |each, index|
    list_index = index + 1
    puts "#{list_index}. #{each}"
  end
end

def error
  puts "Invalid input , please try again"
end

def exit_jukebox
    puts "Goodbye.\n"
    return
end