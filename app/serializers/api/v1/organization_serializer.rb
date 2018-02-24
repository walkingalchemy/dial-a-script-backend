class Api::V1::OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :offices
end
