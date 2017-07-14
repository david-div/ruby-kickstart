# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |

def alternate_words(str)
    
    arr = str.delete('!@$#%^&*()=_+[]:;,./<>?\\|').gsub('-',' ').split(' ') # \\|' not between words?
    
    arr.values_at( * arr.each_index.select { | i | i.even? } )

end

=begin

# alternative, creating an array and population it

def alternate_wordz(str)
    arr = str.split(' ')
    new_array = []

    arr.each.with_index do |v, i|
        if i.even?
            new_array << v
        end
    end

    new_array

end    

# Examples
p alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
p alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
p alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

=end