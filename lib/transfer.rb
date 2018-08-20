class Transfer
  # your code here
  
  attr_accessor :sender, :recipient, :amount
  
  
  def initialize(sender,recipient,amount)
    @sender = sender
    @recipient = recipient
    @amount = amount
  end
  
  
end
