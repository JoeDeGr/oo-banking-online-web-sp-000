class Transfer
  # your code here
  attr_accessor
  attr_reader :sender, :receiver
  def initialize (sender, receiver, amount = 0)
    @sender = sender
    @receiver = receiver
    @status = pending
    @amount = amount
  end
end
