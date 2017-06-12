require 'date'
require '/Users/hendrikgeiger/makers/techtests/bank/src/deposit.rb'
require '/Users/hendrikgeiger/makers/techtests/bank/src/withdrawal.rb'

class Account
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @deposit = Deposit.new(amount)
    @balance += @deposit.amount
  end

  def withdraw(amount)
    @withdrawal = Withdrawal.new(amount)
    @balance -= @withdrawal.amount
  end


end
