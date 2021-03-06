require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :bio, :home_id, :password_hash, :selfie, :session_token, :username, :email, :password
  attr_reader :password
  
  include BCrypt
  before_validation { self.reset_session_token! if self.session_token.nil? }
  validate :password_hash, :session_token, :username, presence: true
  validate :password, :length => { minimum: 4 }

  has_one :home
  has_many :items, through: :home, source: :items
  has_many :rented_items, through: :home, source: :items
  has_many :rentals, class_name: "Rental", foreign_key: :user_id
  has_many :reviews, class_name: "RentalReview", foreign_key: :author_id
  

  def authenticate(password)
    BCrypt::Password.new(self.password_hash) == password
  end

  # is this necessary?
  def password
    @password || self.password_hash
  end

  def password=(password)
    self.password_hash = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64(16)
    self.save!
  end

end
