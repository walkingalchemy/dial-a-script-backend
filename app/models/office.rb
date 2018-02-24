class Office < ApplicationRecord
  belongs_to :organization
  has_many :phones

  validates :title, :organization, presence: true
end
