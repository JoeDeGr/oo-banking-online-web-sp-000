class BankAccount
  attr_reader :name
  def initialize (name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
  end
  def display_balance
    @balance
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
