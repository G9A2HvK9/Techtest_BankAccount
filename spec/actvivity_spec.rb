describe Activity do

  let (:account) { Account.new}
  subject {account.activity}

  describe "Initialisation" do
    it { is_expected.to be_an_instance_of(Activity) }
    it { is_expected.to have_attributes(history: []) }
  end

  describe "Functionality" do

    it "Stores information on deposits" do
      account.deposit(500)
      expect(subject.history.last.amount).to be(500)
      expect(subject.history.last.balance).to be(500)
    end

    it "Stores information on withdrawals" do
      account.deposit(1000)
      account.withdraw(500)
      expect(subject.history.last.amount).to be(500)
      expect(subject.history.last.balance).to be(500)
    end
  end

end
