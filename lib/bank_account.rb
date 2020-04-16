class BankAccount
  
  attr_accessor :status, :broke, :balance
  attr_reader :name
  
  
  def initialize(name, balance = 1000, status = "open")
    @name, @balance, @status = name, balance, status
  end 
    
  def deposit(money)
    @balance += money
  end 
  
  def display_balance
    "Your balance is $#{balance}."
  end
  
  def broke
    @balance = 0 
  end 
  
  def closed
    @status = "closed"
  end 
  
  def valid?
    #this is a boolean that returns true or false(y or n) if the balance is greater than 0 and the status is open. To implement this functionality, if statements regarding the instances.
    status == "open" && balance > 0
    
  end 
  
  def close_account(balance = 0)
    self.closed
  end 
end
