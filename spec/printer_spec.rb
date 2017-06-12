describe Printer do

  subject { Printer.new }
  let(:account) {Account.new}

  #Initialisation testing. Tests that set up of the printer class is correct.

  it { is_expected.to be_an_instance_of(Printer) }
  it { is_expected.to respond_to(:print_activity) }

  #Functionality testing.

  it "Prints all account activity in the correct format" do
    account.deposit(500)
    account.withdraw(300)
    expect{subject.print_activity(account)}.to output("Date || Credit || Debit || Balance\n06/12/17 || --- || 300 || 200\n06/12/17 || 500 || --- || 500\n").to_stdout
  end

end
