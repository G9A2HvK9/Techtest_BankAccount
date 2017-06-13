# Understands how to update account balance
require './src/withdrawal'
require './src/deposit'
require './src/activity'

class Account
  attr_reader :activity, :balance

  def deposit(amount)
    @balance += amount
    @activity.array.push(Deposit.new(amount, @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @activity.array.push(Withdrawal.new(amount, @balance))
  end

  private

  def initialize
    @activity = Activity.new
    @balance = 0
  end
end
