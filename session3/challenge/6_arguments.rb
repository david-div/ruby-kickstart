# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

# every two elements are represented by true or false
# The very first parameter will not be part of this set

def match_maker(opposites_attract, *elements) # * will create an array
    to_return = []
    elements.each_slice 2 do |first, last| # slicing an array into arrays of 2
        first  = !!first                   # boolean
        last   = !!last                    # boolean
        result = if opposites_attract       
                    first != last
                else
                    first == last
                end
        to_return << result
    end
    to_return
end

p match_maker false, true,  true                # => [true]
p match_maker true,  true,  true                # => [false]
p match_maker true,  false, false               # => [false]
p match_maker true,  false, true                # => [true]
p match_maker true,  true,  false               # => [true]
p match_maker true,  true,  true, false, true   # => [false, true]
p match_maker true,  true,  true, false, nil    # => [false, false]
p match_maker true,  true,  true, true, nil     # => [false, true]
p match_maker true,  true,  true, 0, nil        # => [false, true]
