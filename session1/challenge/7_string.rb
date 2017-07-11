# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    
    arr = string.downcase.split('')   # turning into an array and making lowercase
    
    index_no     = arr.each_index.select { |r| arr[r] == 'r' }   # finding the index no of each r
    
    new_index_no = index_no.map {|n| n + 1} # adding 1 to each index no
    
    p new_index_no.map {|i| arr[i] }.join   # mapping the index no to the original arr and chaning to a str
    
end

=begin
pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
=end