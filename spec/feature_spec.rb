require './src/account'

describe 'Feature' do

  it "Allows the user to initiate a new account" do
    @account = Account.new
  end

  before do
    @account = Account.new
  end

  it 'Allows the user to make a deposit of 1000 on current date' do
    @account.deposit(1000)
    expect(@account.activity[0].amount).to eq(1000)
    expect(@account.activity[0].new_balance).to eq(1000)
  end

  it 'Allows the user to make another deposit of 2000 on current date' do
    @account.deposit(1000)
    @account.deposit(2000)
    expect(@account.activity[1].amount).to eq(2000)
    expect(@account.activity[1].new_balance).to eq(3000)
    expect(@account.balance).to eq(3000)
  end

  it 'Allows the user to make an eventual withdrawal of 500 on current date' do
    @account.deposit(1000)
    @account.deposit(2000)
    @account.withdraw(500)
    expect(@account.activity[2].amount).to eq(500)
    expect(@account.activity[2].new_balance).to eq(2500)
    expect(@account.balance).to eq(2500)
  end

  it 'Allows the user to display her activity according to stipulation' do
    @account.deposit(1000)
    @account.deposit(2000)
    @account.withdraw(500)
    expect{ @account.display_activity }.to output("Date || Credit || Debit || Balance\n06/12/17 || --- || 500 || 2500\n06/12/17 || 2000 || --- || 3000\n06/12/17 || 1000 || --- || 1000\n").to_stdout
  end
end
