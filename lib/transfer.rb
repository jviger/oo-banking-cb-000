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
    if self.valid?
      receiver.deposit(amount)
      sender.balance -= amount
    else 
      "Transaction rejected. Please check your account balance."
    end
  end
      
  
  
  def reverse_transaction
    
  end
  
end
