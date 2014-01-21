class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :description
      t.integer :consumer_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
