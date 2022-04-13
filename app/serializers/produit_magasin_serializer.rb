class ProduitMagasinSerializer < ActiveModel::Serializer
  attributes :id, :qte
  has_one :produit
  has_one :magasin
end
