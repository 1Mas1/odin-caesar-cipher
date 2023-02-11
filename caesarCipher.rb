def caesar_cipher(string, shift)

    # arrays to store values
    string_array = []
    ord_array = []
    encyrpted_ord = []
    encrypted_string = []

    #places each char in the string as a lowercase into the string array
    string_array = string.downcase.chars

    #converts each char in string array to ord and push to ord array
    for i in string_array
        ord_array.push(i.ord)
    end

    for i in ord_array
        if i > 122 || i < 97
            encyrpted_ord.push(i)
        elsif i + shift > 122
            x = i + shift
            y = x - 122
            encyrpted_ord.push(96 + y)
        else encyrpted_ord.push(i + shift)
        end 
    end

    for i in encyrpted_ord
        encrypted_string.push(i.chr)
    end

    puts encrypted_string.join()
end

caesar_cipher('What a string!',5)