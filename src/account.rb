# Understands how to update account balance
require './src/withdrawal'
require './src/deposit'
require './src/activity'

class Account
  attr_reader :activity, :balance

  def deposit(amount)
    guard_against_string(amount)
    @balance += amount
    @activity.array.push(Deposit.new(amount, @balance))
  end

  def withdraw(amount)
    guard_against_string(amount)
    guard_against_balance(amount)
    @balance -= amount
    @activity.array.push(Withdrawal.new(amount, @balance))
  end

  private

  def initialize
    @activity = Activity.new
    @balance = 0
  end

  def guard_against_string(argument)
    unless argument.is_a?(Float) || argument.is_a?(Integer)
      raise ("Unrecognized amount")
    end
  end

  def guard_against_balance(argument)
    if @balance - argument < 0
      raise ("You have insufficient funds.")
    end
  end
end
