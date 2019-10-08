class UserSerializer < ActiveModel::Serializer
 attributes :id, :email,  :admin, :name
end
