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
    if self.valid? && self.status == "pending" && sender.balance > amount
        receiver.balance += amount
        sender.balance -= amount
        self.status = "complete"
    else
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
    end
  end
      
  def reverse_transfer
    if self.valid? && self.status == "complete" 
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    end
    
  end
  
end
