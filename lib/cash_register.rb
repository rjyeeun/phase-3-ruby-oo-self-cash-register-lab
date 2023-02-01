require 'pry'
class CashRegister 
    attr_accessor :total, :items
    attr_reader :discount

    def initialize(discount =0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
        @items << title 
        end

    end

    def apply_discount
        if discount > 0
            my_discount = @total * @discount/100
            @total = total - my_discount
            "After the discount, the total comes to $#{@total}."
        else "There is no discount to apply."
        end
    end


end

binding.pry






