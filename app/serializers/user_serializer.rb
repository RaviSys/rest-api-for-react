class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :contact, :image_url, :account_created_at
end
