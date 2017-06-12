require './src/withdrawal'

describe Withdrawal do

  before do
    @withdrawal = Withdrawal.new(100, nil)
  end

  it "Initializes correctly" do
    expect(@withdrawal).to be_a_kind_of(Withdrawal)
    expect(@withdrawal).to have_attributes(amount: 100, date: nil)
  end

end
