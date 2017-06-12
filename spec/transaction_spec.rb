describe Transaction do

  let (:deposit) {Transaction.new(500, 1000)}
  let (:withdrawal) {Transaction.new(-500, 1000)}

  #Initialisation tests to see whether class is set up correctly

  it { is_expected.to be_an_instance_of(Transaction) }
  it { is_expected.to have_attributes(amount: nil, balance: nil) }

  # Functionality tests

  it "Can print its own contents in the correct format" do
    expect {deposit.print_transaction}.to output("06/12/17 || 500 || --- || 1000\n").to_stdout
    expect {withdrawal.print_transaction}.to output("06/12/17 || --- || 500 || 1000\n").to_stdout
  end
end
