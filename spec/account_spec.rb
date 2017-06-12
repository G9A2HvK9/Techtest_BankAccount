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





end
