class Rental < ActiveRecord::Base
  attr_accessible :end_date, :item_id, :start_date, :status, :user_id
end
