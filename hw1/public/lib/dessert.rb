class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name, :calories

  # which returns true if and only if a dessert has less than 200 calories
  def healthy?
    self.calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    super(flavor + ' jelly bean', 5)
    @flavor = flavor
  end

  attr_accessor :flavor
  
  def delicious?
      self.flavor != 'licorice'
  end

end
