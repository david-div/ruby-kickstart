# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"
    
    
# return_odds == true ? string[1] + string[3] + string[5] : string[0] + string[2] + string[4] + string[6]

def odds_and_evens(string, return_odds)

    arr = string.split('')
    
    if return_odds == true
    arr.values_at( * arr.each_index.select { |i| i.odd? }).join
    else
    arr.values_at( * arr.each_index.select { |i| i.even? }).join
end

end






    