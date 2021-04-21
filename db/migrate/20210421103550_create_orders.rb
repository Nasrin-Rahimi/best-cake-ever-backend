class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :total_price
      t.string :order_Date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
