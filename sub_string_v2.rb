dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    hash = {}
    string_array = string.downcase.split
    string_array.each do |i|
        dictionary.each do |s|
            if i.include?(s)
                if hash.has_key?(s)
                    hash[s] += 1
                else hash[s] =1
                end
            end
        end
    end
    puts hash
end


