class UserSerializer < ActiveModel::Serializer
  attributes :id,:username,:email,:confirmed,:confirmation_token,:password_digest,:firstname,:lastname,:role_id
  belongs_to :role

end
