class Phone < ApplicationRecord
  belongs_to :office
  has_many :phone_scripts
  has_many :scripts, through: :phone_scripts
  has_one :organization, through: :office

  validates :digits, :office, presence: true


end
