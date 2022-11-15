def caesar_cipher(string, shift)
    return_ord_array = []
    cipher_shifted = []
    final_array = []
    
  
    # need to downcase string to convert to ordinal
    string_array = string.downcase.split('')
  
    #converate string to ord and push to return_ord_array
    for i in string_array
      return_ord_array.push(i.ord)
    end
    #logic to move letters that run past z with shift
    for i in return_ord_array 
      if i < 97 || i > 122 
      cipher_shifted.push(i)
      elsif i + shift > 122
        x = i + shift
        y = x - 122 
        cipher_shifted.push(96 + y)
      else cipher_shifted.push(i + shift)
      end
    end
      #recombine for final message 
    for i in cipher_shifted
        final_array.push(i.chr)
    end
   
    puts " First combo string array changed to ord #{return_ord_array}"
    puts " combined cipher ord numbers #{cipher_shifted} "
    puts " Final message encryption #{final_array.join('')} "
    
  end
  caesar_cipher("What a string!", 5)

    