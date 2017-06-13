describe Printer do

  subject { Printer.new }
  let(:account) {Account.new}

  describe "Initialisation" do
    it { is_expected.to be_an_instance_of(Printer) }
    it { is_expected.to respond_to(:print_activity) }
  end

  describe "Functionality" do
    it "Prints all account activity in the correct format" do
      account.deposit(500)
      account.withdraw(300)
      expect{subject.print_activity(account)}.to output("Date || Credit || Debit || Balance\n#{DateTime.now.strftime('%D')} || --- || 300 || 200\n#{DateTime.now.strftime('%D')} || 500 || --- || 500\n").to_stdout
    end
  end

end
