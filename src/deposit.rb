require 'date'

class Deposit
  attr_reader :date, :amount
  attr_accessor :new_balance

  def initialize(amount = nil, date = DateTime.now)
    @date = date
    @amount = amount
    @new_balance = nil
  end

end
