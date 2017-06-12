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

  def display_activity
    puts "Date || Credit || Debit || Balance"

    @activity.each do |entry|
      if entry.is_a?(Withdrawal)
        puts "#{entry.date.strftime('%D')} || --- || #{entry.amount} || #{entry.new_balance}"
      else
        puts "#{entry.date.strftime('%D')} || #{entry.amount} || --- || #{entry.new_balance}"
      end
    end

  end


end
