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
      @sender.balance -= @amount && @receiver.balance += @amount if self.valid? && @sender.balance > @amount
      # @sender.balance -= @amount
      # @receiver.balance += @amount
    end
  end

end
