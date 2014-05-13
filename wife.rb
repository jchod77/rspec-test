class Wife
  attr_reader :name, :age, :happy

  def initialize(name, age)
    @name = name
    @age = age
    @happy = false
  end

  def flowers(type)
    if type == "Lilly"
      @happy = true
    end
  end

  def happy?
    @happy
  end
end