require 'date'

class Deposit
  attr_reader :date, :amount

  def initialize(amount = nil, date = DateTime.now)
    @date = date
    @amount = amount
  end


end
