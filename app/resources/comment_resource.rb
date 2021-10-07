class CommentResource < JSONAPI::Resource
    attributes :description
    belongs_to :user
    belongs_to :article
  end