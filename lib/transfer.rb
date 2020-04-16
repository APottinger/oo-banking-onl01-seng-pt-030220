class Transfer
    attr_accessor :sender, :receiver, :status, :amount
    
    def initialize(sender, receiver, amount = 50)
      @sender, @receiver, @amount = sender, receiver, amount
      @status = "pending"
    end
    
    def valid?
      sender.valid? && receiver.valid?
    end
    
  def execute_transaction
    if sender.balance < amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."

    elsif status == "complete"
      puts "Transaction was already excuted"
       
    else
      sender.balance -= amount 
      receiver.balance += amount
      self.status = "complete"
    end
  end
    
  def reverse_transfer
    if status == "complete"
      sender.balance += amount 
      receiver.balance -= amount 
      self.status = "reversed"
    end 
  end 
        
      
      
end
