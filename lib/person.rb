# your code goes here
# your code goes here
require 'pry'
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  @@PEOPLE = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @@PEOPLE << self
  end

  def min_max_checker(num)
    if num > 10
      10
    elsif num < 0
      0
    else
      num
    end
  end

  def happiness=(num)
    @happiness = min_max_checker(num)
  end

  def hygiene=(num)
    @hygiene = min_max_checker(num)
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic === "weather"
      self.happiness = @happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

