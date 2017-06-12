# Understands how to record transactions
require 'date'

class Transaction
  attr_reader :amount, :balance

  def print_transaction
    puts "#{@date.strftime('%D')} || #{@amount > 0 ? @amount : '---'} || #{@amount < 0 ? -@amount : '---'} || #{@balance}"
  end

  private

  def initialize(amount = nil, balance = nil, date = DateTime.now)
    @amount = amount
    @date = date
    @balance = balance
  end

end
