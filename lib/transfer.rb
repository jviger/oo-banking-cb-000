class Transfer
  # your code here
  
  attr_accessor :sender, :receiver, :amount, :status, :attempts
  
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @attempts = 0
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      TRUE
    else 
      FALSE
    end
  end
  
  def execute_transaction
    if self.attempts < 1
      if self.sender.valid?
        receiver.deposit(amount)
        sender.balance -= amount
        self.status = "complete"
      else 
        "Transaction rejected. Please check your account balance."
      end
      @attempts += 1
    end
  end
      
  
  
  def reverse_transaction
    
  end
  
end
