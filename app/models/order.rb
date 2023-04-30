class Order < ApplicationRecord
    validates :customer_name, :shipping_address, :phone_no, presence: true
    serialize :line_items, Array
end
