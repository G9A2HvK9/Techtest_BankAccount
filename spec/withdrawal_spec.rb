describe Withdrawal do

  let (:withdrawal) {Withdrawal.new(500, 1000)}

  #Initialisation tests to see whether class is set up correctly

  it { is_expected.to be_an_instance_of(Withdrawal) }
  it { is_expected.to have_attributes(amount: nil, balance: nil) }

  # Functionality tests

  it "Can print its own contents in the correct format" do
    expect {withdrawal.print_transaction}.to output("#{DateTime.now.strftime('%D')} || --- || 500 || 1000\n").to_stdout
  end
end
