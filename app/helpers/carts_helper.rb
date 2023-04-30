module CartsHelper
    def total_price(line_item)
        line_item.quantity * line_item.product.price
    end

    def cart_total_price(cart)
        cart.line_items.to_a.sum { |item| total_price(item) }
    end


end
