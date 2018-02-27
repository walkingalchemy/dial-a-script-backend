class User < ApplicationRecord
  has_secure_password
  has_many :scripts
  has_many :calls
  has_many :organizations, through: :calls

  validates :name, presence: true
  validates :name, uniqueness: true

end
