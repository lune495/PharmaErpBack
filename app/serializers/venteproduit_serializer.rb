class VenteproduitSerializer < ActiveModel::Serializer
  attributes :id, :qte,:produit
  has_one :produit
  has_one :vente
end
