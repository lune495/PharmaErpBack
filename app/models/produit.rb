class Produit < ApplicationRecord
  has_many :venteproduits
  has_many :ventes, through: :venteproduits
  belongs_to :famille
  belongs_to :user
  # has_one_attached :image
  # validates :image, {
  #   presence: true
  # }
  
  # def get_image_url
  #   url_for(self.image)
  # end
end
