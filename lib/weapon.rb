#require_relative 'item'

class Weapon < Item

  attr_reader :damage

  #def initialize(name='super_shock',weight=10,damage=45)
  def initialize(name,weight,damage)
    super(name, weight)
    @damage = damage
  end

  def hit(another_robot)
    another_robot.wound(@damage)
  end

end





