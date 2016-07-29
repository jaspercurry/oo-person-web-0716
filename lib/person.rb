class Person

  def initialize(name)
    @name=name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(change)
    @bank_account += change
  end

  def happiness
    @happiness
  end

  def happiness=(change)
    if change >10
      @happiness = 10
    elsif change <0
      @happiness = 0
    else
      @happiness = change
    end
  end

  def happy?
    @happiness > 7
  end

  def hygiene
    @hygiene
  end

  def clean?
    @hygiene > 7
  end

  def hygiene=(change)
    if change >10
      @hygiene = 10 #you cannot use a setter to modify the hygiene amount because we are defining the setter, so I must modify the instance variable direclty.?
    elsif change <0
      @hygiene = 0
    else
      @hygiene = change
    end
  end

  def get_paid(amount)
    self.bank_account=(amount)
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(self.hygiene - 3)
    self.happiness=(self.happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness=(self.happiness + 3)
    person.happiness=( person.happiness + 3 )
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(self.happiness - 2)
      person.happiness=( person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(self.happiness + 1)
      person.happiness=( person.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end