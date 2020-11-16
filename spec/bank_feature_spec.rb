# require 'account'
# require 'statement'
# require 'date'
# # require 'timecop'

# describe 'Bank feature test' do
#   it 'can make a deposit, withdrawal and print the statement' do
#     date = Time.now
#     # Timecop.freeze(date)
#     account = Account.new
#     allow(Time).to receive(:now) {'10/01/12'}
#     account.deposit(1000)
#     allow(Time).to receive(:now) {'13/01/12'}
#     account.deposit(2000)
#     allow(Time).to receive(:now) {'14/01/12'}
#     account.withdrawal(500)
#     statement = Statement.new(account.transactions)
#     expect { statement.print_statement }.to output("date || credit || debit || balance\n
#       14/01/12 || || 500.00 || 2500.00\n
#       13/01/12 || 2000.00 || || 3000.00\n
#       10/01/12 || 1000.00 || || 1000.00\n").to_stdout
    
#   end
# end
