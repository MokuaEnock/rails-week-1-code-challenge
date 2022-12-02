class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.belongs_to :pizza
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
