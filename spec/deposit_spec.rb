describe Deposit do

  let (:deposit) {Deposit.new(500, 1000)}

  describe "Initialisation" do
    it { is_expected.to be_an_instance_of(Deposit) }
    it { is_expected.to have_attributes(amount: nil, balance: nil) }
  end

  describe "Functionality" do
    it "Can print its own contents in the correct format" do
      expect {deposit.print_transaction}.to output("#{DateTime.now.strftime('%D')} || 500 || --- || 1000\n").to_stdout
    end
  end
  
end
