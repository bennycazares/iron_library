class User < ActiveRecord::Base
  validates :email, :name, :password, presence: true
  has_secure_password
end
