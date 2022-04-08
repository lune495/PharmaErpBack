class VenteSerializer < ActiveModel::Serializer
  attributes :id, :montant, :qte,:montantencaisse, :monnaie,:user,:created_at
  has_one :user
end
