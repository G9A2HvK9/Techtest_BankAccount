# Understands how to record transactions
require 'date'

class Deposit
  attr_reader :amount, :balance

  def print_transaction
    puts "#{@date.strftime('%D')} || #{@amount} || --- || #{@balance}"
  end

  private

  def initialize(amount = nil, balance = nil, date = DateTime.now)
    @amount = amount
    @date = date
    @balance = balance
  end

end
