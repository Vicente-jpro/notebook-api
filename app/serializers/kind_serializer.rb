class KindSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_many :contact
end
