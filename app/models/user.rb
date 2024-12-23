class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :categories, dependent: :destroy
  has_many :todos, dependent: :destroy
end
