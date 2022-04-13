class ProduitMagasin < ApplicationRecord
  belongs_to :produit
  belongs_to :magasin
end
