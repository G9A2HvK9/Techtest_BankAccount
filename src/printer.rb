class Printer

  def print_activity(account)
    puts HEADER
    account.activity.history.reverse.each do |transaction|
      transaction.print_transaction
    end
  end

  private

  HEADER = 'Date || Credit || Debit || Balance'

end
