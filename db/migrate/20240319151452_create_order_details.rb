class CreateOrderDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :order_details do |t|
      t.decimal :quantity
      t.decimal :amount_after

      t.timestamps
    end
  end
end
