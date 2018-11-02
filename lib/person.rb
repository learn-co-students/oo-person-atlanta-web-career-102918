require "pry"

class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
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
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    # this is a correct way to solve this problem
    # remember make it WORK then make it sexy

    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

    # remember we could use the logic below for this lab but it is not needed
    # when you have more instances then we could potentially think about using this method
    # but it is important for us to think about what we can do with all the tools we've learned

    # instances = [self, person]
    #
    # if topic == "politics"
    #   instances.each { |inst| inst.happiness -= 2 }
    #   "blah blah partisan blah lobbyist"
    # elsif topic == "weather"
    #   instances.each { |inst| inst.happiness += 1 }
    #   "blah blah sun blah rain"
    # else
    #   "blah blah blah blah blah"
    # end

  end

end
