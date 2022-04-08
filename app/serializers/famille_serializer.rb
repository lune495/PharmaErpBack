class FamilleSerializer < ActiveModel::Serializer
  attributes :id , :nom
  has_many :produit
end
