# your code goes here

require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(amt)
    self.bank_account += amt
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness +=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      friend.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      friend.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end

end

binding.pry