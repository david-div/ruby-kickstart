# Make a person class that has a name, age, and birthday
#
#

class Person
    
    attr_accessor 'name', 'age' # allows you to both read and write e.g. josh.name = joshua
                                # and change the initial intitialize
    def initialize(name, age)
        @name = name
        @age  = age
    end
    
    def birthday
        @age += 1
    end
    
end

=begin

josh = Person.new 'Josh', 28
#
p josh.name     # => "Josh"
p josh.age      # => 28
#
josh.name = 'Joshua'
p josh.name     # => "Joshua"
#
p josh.birthday # => 29
p josh.age      # => 29
#
p josh.birthday # => 30
p josh.age      # => 30

=end