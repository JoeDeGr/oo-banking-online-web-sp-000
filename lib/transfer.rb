require 'pry'
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
    @sender.valid? && @sender.balance.to_i > @amount && @receiver.valid? ? true : false
  end
  def sender_balance
    @sender.display_balance
  end
  def execute_transaction
    #binding.pry
    while @status == "pending" do
      if @sender.balance > @amount
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      elsif status = "pending"
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      end
    end
  end

end
