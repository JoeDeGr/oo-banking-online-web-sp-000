class BankAccount
  attr_reader :name, :balance, :status
  def initialize (name, balance = 1000)
    @name = name
    @balance = balance
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
  end
  def display_balance
    puts self.balance
  end
  def valid?
    if @status = "open" || @balance > 0
      puts "The account is valid."
    else
      puts " The account is invalid."
    end
  end
  def close_accout
    @balance = 0
    @status = closed
  end

end
