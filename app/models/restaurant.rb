class Restaurant < ActiveRecord::Base
  has_many :food_items
  has_many :consumers, :through => :food_items
end
