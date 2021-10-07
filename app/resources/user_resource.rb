class UserResource < JSONAPI::Resource
  attributes :username, :email, :password, :admin
  has_many :comments, exclude_links: :default
  has_many :articles, exclude_links: :default

  def fetchable_fields
    super - [:password]
  end

  paginator :paged
end