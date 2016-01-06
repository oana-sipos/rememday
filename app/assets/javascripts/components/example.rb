class Hello

  def initialize(name)
    @name = name
  end

  def print
    random_greeting
    puts "Hello #{@name} #{@greeting}"
  end

  def random_greeting
    @greeting = ['you are cool', 'you suck', 'wow'].sample
  end

end
