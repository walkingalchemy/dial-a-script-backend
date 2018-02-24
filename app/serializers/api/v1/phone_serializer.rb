class Api::V1::PhoneSerializer < ActiveModel::Serializer
  attributes :id, :digits, :status
  belongs_to :office
  has_one :organization

end
