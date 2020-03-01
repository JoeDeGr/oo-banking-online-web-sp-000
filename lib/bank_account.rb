class BankAccount
  attr_reader :name
  def initalize (name, balance = 1000)
    @name = name
    @balance = balance
    @status = open
  end
  
 
end
