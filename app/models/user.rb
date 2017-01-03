class User < ApplicationRecord
  # Associations
  has_many :recipes

  # Validations
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, email: true, uniqueness: { case_sensitive: false }, length: { maximum: 255 }

  has_secure_password
end
