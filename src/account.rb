# Understands how to update account balance
require './src/transaction'
require './src/activity'

class Account
  attr_reader :activity, :balance

  def deposit(amount)
    @balance += amount
    @activity.array.push(Transaction.new(amount, @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @activity.array.push(Transaction.new(-amount, @balance))
  end

  private

  def initialize
    @activity = Activity.new
    @balance = 0
  end
end
