module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0 and balance < 1000
      0.5
    elsif balance >= 1000 and balance < 5000
      1.621
    elsif balance >= 5000
      2.475
    else
      3.213
    end 
  end

  def self.annual_balance_update(balance)
    int_rate = (1 + (interest_rate(balance) / 100)) 
    return balance * int_rate
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end   
    years
  end
end