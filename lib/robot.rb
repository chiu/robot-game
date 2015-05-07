class Robot

  attr_reader :position, :items, :health
  attr_accessor :equipped_weapon

  def initialize
    @position = [0,0]
    @items = []
    @health = 100
    @attack_power = 5
    @equipped_weapon = nil
  end

  def move_left
    @position[0] = @position[0] - 1
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

  def pick_up(item)
    if self.items_weight < 250
      if item.class.superclass == Weapon #|| item.class == Weapon
        @equipped_weapon = item
      else
        items << item 
      end
    else
      return false
    end
  end

  def items_weight
    total_weight = 20
    # items.each do |item|
    #   total_weight += item.weight
    # end
    #items.inject{|total_weight, item| total_weight + item.weight}
    items.inject(0) {|total_weight, item| total_weight + item.weight}
    return total_weight
  end
  #test 04
  def wound(wound_amount)
    @health = @health - wound_amount 
    @health = 0 if @health < 0
  end

  def heal(heal_amount)
    @health = @health + heal_amount 
    @health = 100 if @health > 100
  end

  def attack(another_robot)
    if @equipped_weapon == nil
      another_robot.wound(5)
    else
      @equipped_weapon.hit(another_robot)
    end
  end
  #test 04 end
end