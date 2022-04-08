class ProduitSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id ,:codebarre, :nom,:pv, :qte ,:famille,:limite,:user,:image,:created_at,:updated_at
  has_one :user
  belongs_to :famille

  # def featured_image
  #   if object.image.attached?
  #     {
  #       url: rails_blob_url(object.image)
  #     }
  #   end
  # end
end
