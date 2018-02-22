class Call < ApplicationRecord
  belongs_to :user
  belongs_to :phone
  belongs_to :script
  has_one :office, through: :phone
  has_one :organization, through: :phone
end
