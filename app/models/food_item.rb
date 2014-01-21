class FoodItem < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :consumer
end
