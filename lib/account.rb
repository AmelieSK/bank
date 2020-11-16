require 'date'
# storing and changing the balance
class Account
  attr_reader :balance, :transactions, :date

  def initialize(date = DateFormat.new)
    @balance = 0
    @transactions = []
    @date = date
  end

  def date
    Date.today.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    @balance += amount
    @transactions << [date.format, amount, ' ', @balance]
  end

  def withdrawal(amount)
    @balance -= amount
    @transactions << [date.format, ' ', amount, @balance]
  end
end
