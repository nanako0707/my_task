class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :category, :body

  has_one :category
end
