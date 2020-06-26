class Player
  attr_reader :name
  attr_reader :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def attack
    @hp -= 10
  end
end