class Item

  attr_reader :weight, :name

  @@NAME_DEFAULT = "default_name"
  @@WEIGHT_DEFAULT = 9001

  def initialize(name = @@NAME_DEFAULT , weight = @@WEIGHT_DEFAULT)
    @name = name
    @weight = weight
  end

end