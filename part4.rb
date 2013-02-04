class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true 
  end
end

class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == "black licorice"
      false
    else
      super
    end 
  end
end

# Test
a = Dessert.new("Creme Brulee",300)
if a.delicious?
puts a.healthy?
