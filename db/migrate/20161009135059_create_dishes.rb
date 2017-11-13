class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.references :user, foreign_key: true
      t.string :dish_name
      t.datetime :time_of_last_Order
      t.integer :maxOrder
      t.decimal :price

      t.timestamps
    end
  end
end
