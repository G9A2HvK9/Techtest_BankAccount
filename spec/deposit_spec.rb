require './src/deposit'

describe Deposit do

  before do
    @deposit = Deposit.new(100, nil)
  end

  it "Initializes correctly" do
    expect(@deposit).to be_a_kind_of(Deposit)
    expect(@deposit).to have_attributes(amount: 100, date: nil)
  end

end
