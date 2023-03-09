class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)    
    raise ArgumentError unless first_operand.is_a?(Integer)
    raise ArgumentError unless second_operand.is_a?(Integer)

    begin 
    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue 
      "Division by zero is not allowed."
    end
  end

  class UnsupportedOperation < StandardError
  end
end