class Item

  attr_reader :weight, :name

  @@NAME_DEFAULT = "john"
  @@WEIGHT_DEFAULT = 45

  def initialize(name = @@NAME_DEFAULT , weight = @@WEIGHT_DEFAULT)
    @name = name
    @weight = weight
  end

end