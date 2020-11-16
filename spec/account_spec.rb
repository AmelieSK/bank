require 'account'
require 'date'

RSpec.describe Account do
  subject(:account) { described_class.new } # account = Account.new
  # date = DateFormat.new
  let(:amt) { 1000 }
  let(:date) { '09/09/2020' }
  let(:type) { ' ' }

  # describe '#date' do # hashtag means you're testing a method
  #   it 'shows the date' do
  #     expect(account.date).to eq date_format
  #   end
  # end

  describe '#deposit' do
    it 'increases the balance' do
      account.deposit(amt)
      expect(account.balance).to eq(amt)
    end
  end

  describe '#withdrawal' do
    it 'decreases the balance' do
      account.deposit(amt)
      account.withdrawal(amt)
      expect(account.balance).to eq(0)
    end
  end

  context 'when making a deposit or withdrawal' do # context when you're testing different outputs
    it 'stores the date, credit, amount and balance for a deposit' do
      account.deposit(amt)
      expect(account.transactions).to eq([[date, amt, type, account.balance]])
    end

    it 'stores the date, credit, amount and balance for a withdrawal' do
      account.deposit(amt)
      account.withdrawal(500)
      expect(account.transactions[1]).to eq([date, type, 500, account.balance])
    end
  end
end
