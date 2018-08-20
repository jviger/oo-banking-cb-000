class Transfer
  # your code here
  
  attr_accessor :sender, :receiver, :amount, :status
  
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      TRUE
    else 
      FALSE
    end
  end
  
  def execute_transaction
    if self.status != "pending"
      "Transaction rejected. Please check your account balance."
      if self.valid?
        receiver.balance += amount
        sender.balance -= amount
        self.status = "complete"
      else
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    else 
      self.status = "rejected"
      
    end

    
  end
      
  
  
  def reverse_transaction
    
  end
  
end
