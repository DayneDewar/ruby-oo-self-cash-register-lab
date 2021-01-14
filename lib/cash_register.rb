require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        "There is no discount to apply."
    end
    
    def add_item(title, price, quantity = 1)
        self.total = (quantity * price) + self.total
        quantity.times do 
            @items << title
        @last_transaction = price
        end

    end
    def apply_discount
        if @discount != 0
            @total = @total - ((@total/100) * discount)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total -= @last_transaction
    end

end