class Acronym
  def self.abbreviate(expression)
    expression.split(/[\s-]/).map { |word| word[0]}.join.upcase
  end 
end 