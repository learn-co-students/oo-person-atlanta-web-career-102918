require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8 
    @hygiene = 8
  end

  def happiness=(index)
    if index < 0
      @happiness = 0
    elsif index > 10
      @happiness = 10 
    else  
      @happiness = index 
    end
  end

  def hygiene=(index)
    @hygiene = 0 if index < 0 
    @hygiene = 10 if index > 10 
    @hygiene = index unless index < 0 || index > 10 
  end

  def happy?
    return true if @happiness > 7 
    false 
  end

  def clean?
    return true if @hygiene > 7
    false 
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    self.hygiene=(@hygiene)
    self.happiness=(@happiness)
    return '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      [person, self].each {|o| o.happiness -= 2}
      'blah blah partisan blah lobbyist' 
    elsif topic == 'weather'
      [person, self].each {|o| o.happiness += 1}
      'blah blah sun blah rain'
    else 
      'blah blah blah blah blah'
    end
  end
end