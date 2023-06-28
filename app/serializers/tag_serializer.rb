class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts

  def posts
    object.posts.pluck(:title)
  end
end
