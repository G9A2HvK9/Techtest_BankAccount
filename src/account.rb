require 'date'
require '/Users/hendrikgeiger/makers/techtests/bank/src/deposit.rb'
require '/Users/hendrikgeiger/makers/techtests/bank/src/withdrawal.rb'

class Account
  attr_reader :balance, :activity

  def initialize(balance = 0, activity = [])
    @balance = balance
    @activity = activity
  end

  def deposit(amount)
    @deposit = Deposit.new(amount)
    @balance += @deposit.amount
    @deposit.new_balance = @balance
    @activity.push(@deposit)
  end

  def withdraw(amount)
    @withdrawal = Withdrawal.new(amount)
    @balance -= @withdrawal.amount
    @withdrawal.new_balance = @balance
    @activity.push(@withdrawal)
  end


end
