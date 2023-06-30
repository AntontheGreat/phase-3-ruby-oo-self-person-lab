# your code goes here
require 'pry'
# When we create a class, each new instance of a class is considered to be an object.
class Person
    # attr_reader macro, followed by the attribute name :name, created a getter method for us.
    attr_reader :name, :hygiene
    # attr_accessor gives access to reader and writer methods from one macro!
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    # self keyword inside the body of an instance method to refer to the very same object the ...
    # ... method is being called on.

    def happy?
        self.happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
            objects.each {|o| o.happiness -= 2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            objects.each {|o| o.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end