class CollatzConjecture
  def self.steps(num) 
    raise ArgumentError if num < 1
    
    collatz_steps = 0 

    until num == 1
      if num.even?
        num = num/2
        collatz_steps += 1
      else
        num = (num*3) + 1
        collatz_steps += 1
      end
    end
    collatz_steps
  end 
end 