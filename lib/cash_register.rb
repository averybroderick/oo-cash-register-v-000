class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction_amount = price*quantity
    self.total += price*quantity
    while quantity >= 1
      self.items << title
      quantity -= 1
    end
  end

  def apply_discount
    if self.discount
      to_subtract = self.total * (self.discount * 0.01)
      discounted_total = self.total -= to_subtract
      return "After the discount, the total comes to $#{discounted_total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.items
  end

  def void_last_transaction
    self.total -= self.last_transaction_amount
  end


end
