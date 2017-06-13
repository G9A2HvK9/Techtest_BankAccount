describe Account do

  subject { Account.new }
  let (:activity) { Account.new.activity }

  describe "Initialisation" do

    it { is_expected.to be_an_instance_of(Account) }
    it { is_expected.to respond_to(:deposit) }
    it { is_expected.to respond_to(:withdraw) }

    it "should have an attribute called balance, which is equal to 0" do
      expect(subject.balance).to eq(0)
    end

    it "should have an attribute called activity, which is an instance of activity" do
      expect(subject.activity).to be_an_instance_of(Activity)
    end
  end

  describe "Functionality" do

    it "Can accept a deposit" do
      subject.deposit(100)
      expect(subject.activity.array).not_to be_empty
    end

    it "Changes the balance according to deposits" do
      expect {subject.deposit(100)}.to change{subject.balance}.by(100)
      expect(subject.balance).to be(100)
    end

    it "Can dispense a withdrawal" do
      subject.deposit(200)
      subject.withdraw(100)
      expect(subject.activity.array).not_to be_empty
    end

    it "Changes the balance according to withdrawals" do
      subject.deposit(100)
      expect {subject.withdraw(100)}.to change{subject.balance}.by(-100)
      expect(subject.balance).to be(0)
    end
  end

  describe "Edge cases and guard conditions" do

    it "Does not allow for user input of a string in withdrawal" do
      expect {subject.withdraw("abc")}.to raise_error(RuntimeError)
    end

    it "Does not allow for user to withdraw less than minbalance" do
      expect {subject.withdraw(100)}.to raise_error(RuntimeError)
    end
  end
  
end
