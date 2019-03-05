class User < ApplicationRecord
	has_secure_password
	has_one_attached :avatar
  validates :email, presence: true, uniqueness: true

  has_many :recipes
end
