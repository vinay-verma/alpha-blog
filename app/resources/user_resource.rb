class UserResource < JSONAPI::Resource
    attributes :username
    has_many :comments
    has_many :articles
  end