class RentalReview < ActiveRecord::Base
  attr_accessible :author_id, :body, :rating, :rental_id, :title
end
