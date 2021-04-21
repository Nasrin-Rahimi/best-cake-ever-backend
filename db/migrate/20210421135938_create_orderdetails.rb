class CreateOrderdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :orderdetails do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.string :quantity

      t.timestamps
    end
  end
end
