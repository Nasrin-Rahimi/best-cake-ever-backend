class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :unit_price
      t.string :weight
      t.string :description
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
