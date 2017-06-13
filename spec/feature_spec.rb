describe 'Features' do

  let(:account) { Account.new }
  let(:printer) { Printer.new }

  it "should allow a client to deposit 1000 on current date" do
    account.deposit(1000)
    expect(account.activity.history.last.amount).to eq(1000)
    expect(account.activity.history.last.balance).to eq(1000)
    expect(account.balance).to eq(1000)
  end

  it "should allow a client to deposit a further 2000 on current date" do
    account.deposit(1000)
    account.deposit(2000)
    expect(account.activity.history.last.amount).to eq(2000)
    expect(account.activity.history.last.balance).to eq(3000)
    expect(account.balance).to eq(3000)
  end

  it "should allow a client to then withdraw 500 on current date" do
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect(account.activity.history.last.amount).to eq(500)
    expect(account.activity.history.last.balance).to eq(2500)
    expect(account.balance).to eq(2500)
  end

  it "should allow a client to print the current account activity" do
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect {printer.print_activity(account)}.to output("Date || Credit || Debit || Balance\n#{DateTime.now.strftime('%D')} || --- || 500 || 2500\n#{DateTime.now.strftime('%D')} || 2000 || --- || 3000\n#{DateTime.now.strftime('%D')} || 1000 || --- || 1000\n").to_stdout
  end


end
