class BoxOfBolts < Item
  
  def initialize
    super('Box of bolts', 25)
  end

  def feed(robot_object)
    robot_object.heal(20)
  end

end