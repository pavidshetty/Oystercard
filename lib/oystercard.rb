class Oystercard
  attr_reader :balance

  LIMIT = 90
  MINIMUM_BALANCE = 1

  def initialize
   @balance = 0
   #@in_journey = false
  end

  def top_up(amount)
    fail 'balance cannot exceed #{LIMIT}' if @balance + amount > LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
  false
  end

  def touch_in
   fail 'Insufficient balance' if @balance < MINIMUM_BALANCE
   true
  end

  def touch_out
  false
  end


end
