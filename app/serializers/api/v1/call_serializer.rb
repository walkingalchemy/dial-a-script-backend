class Api::V1::CallSerializer < ActiveModel::Serializer
  attributes :id, :duration, :note, :outcome, :who
  belongs_to :user
  belongs_to :phone
  belongs_to :script
  has_one :office
  has_one :organization
end
