describe Activity do

  let (:account) { Account.new}
  subject {account.activity}


  #Initialize tests. Makes sure the class is set up correctly.

  it { is_expected.to be_an_instance_of(Activity) }
  it { is_expected.to have_attributes(array: []) }

  #Functionality tests

  it "Stores information on deposits" do
    account.deposit(500)
    expect(subject.array.last.amount).to be(500)
    expect(subject.array.last.balance).to be(500)
  end

  it "Stores information on withdrawals" do
    account.withdraw(500)
    expect(subject.array.last.amount).to be(-500)
    expect(subject.array.last.balance).to be(-500)
  end
end
