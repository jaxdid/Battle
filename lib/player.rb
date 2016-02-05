class Player
  DEFAULT_HP = 100

  attr_reader :name, :current_HP

  def initialize(name)
    @name = name
    @current_HP = DEFAULT_HP
  end

  def attack(player)
    player.receives_attack
  end

  def receives_attack
    @current_HP -= 10
  end
end