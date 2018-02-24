class Api::V1::ScriptSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :description
  belongs_to :user
  has_many :calls
  has_many :phones
  has_many :offices
  has_many :organizations
end
