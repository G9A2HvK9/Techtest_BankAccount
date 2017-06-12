describe Account do

  before do
    @account = Account.new
  end

  it { is_expected.to be_akind_of(Account) }

end
