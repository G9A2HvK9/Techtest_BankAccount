require './src/account'

describe Account do

  before do
    @account = Account.new
  end

  it "Initializes correctly" do
    expect(@account).to be_a_kind_of(Account)
    expect(@account).to have_attributes(balance: 0)
  end

  it "Can show the current balance" do
    expect(@account.balance).to be(0)
  end

  it "Can receive a deposit" do
    @account.deposit(500)
    expect(@account.balance).to eq(500)
  end

  it "Can dispense a withdrawal" do
    @account.deposit(500)
    @account.withdraw(100)
    expect(@account.balance).to be(400)
  end

  it "Correctly tracks deposits" do
    @account.deposit(500)
    expect(@account.activity[0].amount).to eq(500)
    expect(@account.activity[0].new_balance).to eq(500)
  end

  it "Correctly tracks withdrawals" do
    @account.withdraw(100)
    expect(@account.activity[0].amount).to eq(100)
    expect(@account.activity[0].new_balance).to eq(-100)
  end

  it "Correctly displays account activity" do
    @account.deposit(500)
    @account.withdraw(100)
    expect{ @account.display_activity }.to output("Date || Credit || Debit || Balance\n06/12/17 || 500 || --- || 500\n06/12/17 || --- || 100 || 400\n").to_stdout
  end

end
