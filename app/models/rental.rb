class Rental < ActiveRecord::Base
  attr_accessible :end_date, :item_id, :start_date, :status, :user_id
  validate :end_date, :item_id, :start_date, :status, :user_id, presence: true

  belongs_to :user
  belongs_to :item
  has_one :review, class_name: "RentalReview", foreign_key: :rental_id

end
