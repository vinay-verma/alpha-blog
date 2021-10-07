class CommentResource < JSONAPI::Resource
  attributes :description
  has_one :user
  has_one :article

  paginator :paged
end