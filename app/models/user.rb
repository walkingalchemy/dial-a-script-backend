class User < ApplicationRecord
  has_many :scripts
  has_many :calls
  has_many :organizations, through: :calls
end
