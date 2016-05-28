def play(songs)
  puts "Please enter a song name or number:"
  x = gets.chomp
  if songs.include?(x)
    y = "Playing #{x}"
  elsif x.to_i > 0 && x.to_i <= songs.size
    songs.each_with_index {|song, index|
    if x.to_i - 1 == index
    y = "Playing #{song}"
  end }
  else
    y = "Invalid input, please try again"
  end
  puts y
end

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

play(songs)
