
songs = ["Phoenix - 1901",
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
  #this method should be the same as in jukebox.rb
puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  songs.each do |e|
    x=1
    puts "#{x}. #{e}"
    x+=1
  end
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
end

def play(songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  a=*(1..10)
   phrase = ""
   puts "Please enter a song name or number:"
   users_request = gets.chomp
              
     if songs.include?("#{users_request}")
       puts "Playing #{users_request}"
     elsif a.include?(users_request.to_i)
       phrase << songs[(users_request.to_i-1)]  
       puts "Playing #{phrase}"
     else
       puts "Invalid input, please try again"  
     end  
   
 end



def exit_jukebox
  puts "Goodbye" #this method is the same as in jukebox.rb
end

def run(my_songs)
  help
  puts "Please enter a command:"
  choice=gets.chomp
  if choice==exit
    exit_jukebox
  end
  choice
  #this method is the same as in jukebox.rb
end