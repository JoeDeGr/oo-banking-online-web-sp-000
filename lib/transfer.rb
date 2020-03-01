class Transfer
  # your code here
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  def initialize (sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end
  def execute_transaction
    if sender.balance < @amount
      puts "Transaction rejected. Please check your account balance."
    elsif self.valid? && self.status = "pending"
        sender.balance -= @amount
        receiver.balance += @amount
        self.status = "complete"
    end
  end

end
