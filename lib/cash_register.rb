class CashRegister
    attr_accessor :total, :discount, :item_array, :last_transaction 
    
#comment 

    def initialize(discount=0)
        @total = 0
        @discount = discount 
        @item_array = []
        @last_transaction = last_transaction
    end

    def add_item(title, price, quantity=1)
            self.total += price * quantity  
            quantity.times do
                item_array << title 
            end
            self.last_transaction = price * quantity 
    end

    def apply_discount
        if @discount != 0
            final_discount = (@discount/100.0) * @total  
        @total = @total - final_discount 
        "After the discount, the total comes to $#{@total.to_int}."
        else 
        "There is no discount to apply."
        end 
    end

    def items 
        @item_array 
    end

    def void_last_transaction 
        self.total = @total - self.last_transaction
    end

    def random_method
        puts "why"
    end
end
