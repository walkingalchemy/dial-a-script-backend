class Office < ApplicationRecord
  belongs_to :organization

  validates :title, :organization, presence: true
end
