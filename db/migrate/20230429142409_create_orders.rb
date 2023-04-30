class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :customer_name
      t.string :shipping_address
      t.string :phone_no
      t.text :line_items

      t.timestamps
    end
  end
end
