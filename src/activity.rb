# Understands how to track account activity

class Activity
  attr_reader :history

  def add(transaction)
    @history.push(transaction)
  end

  private

  def initialize
    @history = []
  end

end
