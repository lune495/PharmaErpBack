class MagasinSerializer < ActiveModel::Serializer
  attributes :id, :stock,:limite, :pa,:created_at,:updated_at
  has_one :produit
end
