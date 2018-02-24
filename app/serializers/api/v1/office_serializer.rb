class Api::V1::OfficeSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :organization
  has_many :phones
end
