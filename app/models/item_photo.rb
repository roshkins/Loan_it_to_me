class ItemPhoto < ActiveRecord::Base
  attr_accessible :item_id, :file_loc
  validate :item_id, :file_loc, presence: true

  belongs_to :item
end
