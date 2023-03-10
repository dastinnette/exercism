class Darts
  def initialize(x, y)
    @x = x.abs
    @y = y.abs
  end 
  
  def score
    case 
      when distance > 10
        0
      when distance <= 10 && distance > 5
        1
      when distance <= 5 && distance > 1
        5
      when distance <= 1 && distance >= 0
        10
    end 
  end

  private

  def distance
    Math.sqrt(@x**2 + @y**2)
  end 
end 