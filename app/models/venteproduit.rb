class Venteproduit < ApplicationRecord
  belongs_to :produit
  belongs_to :vente
end
