class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :contenu, :etat
  has_one :produit
end
