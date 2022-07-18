def caesar_cipher(string, shift_factor)
    # Seperate the string into an array
    input_array = string.split("")

    # Name some important variables needed later
    final_array = []
    output_string = ""
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    alphabet_index = 0
    new_index = 0

    # Loop through the array to get out the alphabets(case sensitive!)
    input_array.each do |input|
        # for the downcase letters
        if input.match?(/[a-z]/)
            #loop through the alphabet
            alphabet.each do |letter|
                if (letter == input)
                    alphabet_index = alphabet.find_index(letter)
                    new_index = alphabet_index + shift_factor
                    if (new_index > 25)
                        new_index = (new_index - 25).abs
                    end
                    final_array << alphabet[new_index]
                end
            end
        # for the upcase letters 
        elsif input.match?(/[A-Z]/)
            alphabet.each do |letter|
                if (letter == input.downcase)
                    alphabet_index = alphabet.find_index(letter)
                    new_index = alphabet_index + shift_factor
                    if (new_index > 25)
                        new_index = (new_index - 25).abs
                    end
                    final_array << alphabet[new_index].upcase
                end
            end
        # for all others!    
        else 
            final_array << input
        end
    end

    # join final array into output string
    output_string = final_array.join

    # print out output string into console
    puts output_string
end






