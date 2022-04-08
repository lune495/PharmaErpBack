class Vente < ApplicationRecord
  has_many :venteproduits
  belongs_to :user
  has_many :produits, through: :venteproduits
  accepts_nested_attributes_for :venteproduits,allow_destroy:true
end
