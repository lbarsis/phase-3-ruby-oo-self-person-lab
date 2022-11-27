# your code goes here

require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account

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

  def happiness=(happiness)
    if happiness <= 10 && happiness >= 0
      @happiness = happiness
    elsif happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    if hygiene <= 10 && hygiene >= 0
      @hygiene = hygiene
    elsif hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    end
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
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
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

end

dan = Person.new('Dan')

binding.pry