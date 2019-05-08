class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio

  has_many :bumblefooks, through: :favorites

end
