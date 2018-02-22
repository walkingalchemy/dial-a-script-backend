class Script < ApplicationRecord
  belongs_to :user
  has_many :calls
  has_many :phone_scripts
  has_many :phones, through: :phone_scripts
  has_many :offices, through: :phones
  has_many :organizations, through: :phones
end
