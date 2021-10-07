class ArticleResource < JSONAPI::Resource
  attributes :title, :description
  has_many :comments
  has_one :user
  filters :title, :user

  paginator :paged
end