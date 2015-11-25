songs = ["a", "b", "c", "d", "e"]

puts "Please enter a song name or number:"
user_input = "4"
if user_input.length < 2
  number = user_input.to_i
end

songs.each_with_index do |item, index|
  if number == index
    puts songs[index-1]
  end

  # if user_input == item
  #   puts "Playing #{item}"
  # elsif user_input == index
  #   puts "Playing #{songs[index]}"
  # end
end
