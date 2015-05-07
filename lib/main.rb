

require_relative 'robot'
require_relative 'item'
require_relative 'weapon'
require_relative 'box_of_bolts'
require_relative 'laser'
require_relative 'plasma_cannon'




superweapon = Weapon.new
puts superweapon.inspect


laser_one = Laser.new
puts laser_one.inspect


puts item_one = Item.new.inspect

puts item_one = Item.new("fairy", 30).inspect

puts item_one = Item.new("kevin").inspect

puts item_one = Item.new(40).inspect