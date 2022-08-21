class CashRegister
    attr_accessor :items,:discount, :total, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end
   
def add_item(title, price, num = 1)
    self.last_transaction = price * num
    self.total += self.last_transaction
    num.times {self.items << title}
end

def apply_discount
    if self.discount != 0
    self.total = (((100.0 - self.discount.to_f) / 100)* self.total).to_i
    "After the discount, the total comes to $#{self.total}."
else
    "There is no discount to apply."
end
end

def void_last_transaction
self.total -= self.last_transaction
end
end
