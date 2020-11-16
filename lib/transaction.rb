require 'date'
# stores transactions
class Transactions
  FORMAT = '%.2f'
  attr_reader :date, :credit, :debit
  def initialize(date, credit, debit, balance)
    @date =  date
    @credit =  credit
    @debit = debit
    @balance = balance
  end

  private
  
  def currency(amount)
    sprintf(FORMAT, amount)
  end
end
