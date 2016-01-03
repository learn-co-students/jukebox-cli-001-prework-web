
[1mFrom:[0m /home/nitrous/code/labs/jukebox-cli-001-prework-web/lib/jukebox.rb @ line 35 Object#play:

    [1;34m29[0m: [32mdef[0m [1;34mplay[0m(songs)
    [1;34m30[0m:   puts [31m[1;31m"[0m[31mPlease enter a song name or number:[1;31m"[0m[31m[0m
    [1;34m31[0m:   user_response = gets.chomp
    [1;34m32[0m:   output = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m33[0m:   songs.each_with_index { |song, index|
    [1;34m34[0m:     [32mif[0m user_response == ((index + [1;34m1[0m).to_s || song)
 => [1;34m35[0m:       binding.pry
    [1;34m36[0m:       output = [31m[1;31m"[0m[31mPlaying #{song}[0m[31m[1;31m"[0m[31m[0m
    [1;34m37[0m:     [32mend[0m
    [1;34m38[0m:   }
    [1;34m39[0m:   puts user_response.inspect
    [1;34m40[0m:   [32mif[0m output.include?([31m[1;31m"[0m[31mPlaying[1;31m"[0m[31m[0m)
    [1;34m41[0m:     puts output
    [1;34m42[0m:   [32melse[0m
    [1;34m43[0m:     puts [31m[1;31m"[0m[31mInvalid input, please try again[1;31m"[0m[31m[0m
    [1;34m44[0m:     play(songs)
    [1;34m45[0m:   [32mend[0m
    [1;34m46[0m: [32mend[0m

