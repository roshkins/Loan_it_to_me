class Item < ActiveRecord::Base
  attr_accessible :avg_rating, :category_id, :description, :home_id, :name, :price
end
