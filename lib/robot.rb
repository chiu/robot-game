class Robot

  attr_reader :position, :items, :health, :shield
  attr_accessor :equipped_weapon

  SHIELD_MAX = 50
  HEALTH_MAX = 100

  def initialize
    @position = [0,0]
    @items = []
    @health = HEALTH_MAX
    @attack_power = 5
    @equipped_weapon = nil
    @shield = SHIELD_MAX
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] = @position[0] + 1
  end

  def move_down
    @position[1] = @position[1] - 1
  end

  def move_up
    @position[1] = @position[1] + 1
  end

#test is wrong;  if at 249, can still add things
def pick_up(item)
  expected_weight = items_weight + item.weight
  if expected_weight <= 250
   item.is_a?(Weapon) ? @equipped_weapon = item : items << item 
 else
  return false
end
end

def items_weight
  items.inject(0){|total_weight, item| total_weight + item.weight}
end

  #test 04
  def wound(wound_amount)

    if @shield - wound_amount >= 0
      @shield -= wound_amount
    elsif wound_amount <= (@shield + @health)
      @shield = 0
      @health = HEALTH_MAX + SHIELD_MAX - wound_amount
    else
      @shield = 0
      @health = 0 
    end

  end



  def heal(heal_amount)
    # @health = @health + heal_amount 
    # @health = 100 if @health > 100
    heal_amount + @health > 100 ?  @health = 100 :  @health = @health + heal_amount 
  end

  def heal!(heal_amount)
    raise RobotAlreadyDeadError.new("robo is dead foo") if @health == 0
    heal(heal_amount)

  end

  def attack(another_robot)
    if @equipped_weapon == nil
      another_robot.wound(5)
    else
      @equipped_weapon.hit(another_robot)
    end
  end


  def attack!(another_robot)
    if another_robot.is_a? Robot
      attack(another_robot) 
    else
      raise UnattackableEnemy.new("This robot is already dead yo."),  'Robot cannot attack a dead robo'
    end
  end


  #robot zero shields
  def set_shield_zero

    @shield = 0
  end


  #test 04 end
end