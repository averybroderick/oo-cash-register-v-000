class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, price, quantity = 1)
    @last_transaction_amount = price*quantity
    @total += price*quantity
    while quantity >= 1
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount
      to_subtract = @total * (@discount * 0.01)
      discounted_total = @total -= to_subtract
      return "After the discount, the total comes to $#{discounted_total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction

  end


end
