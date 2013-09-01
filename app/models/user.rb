class User < ActiveRecord::Base
  attr_accessible :bio, :home_id, :password_hash, :selfie, :session_token, :username
  validate :password_hash, :session_token, :username, presence: true

  

  
end
