class Types::BookType < Types::BaseObject
  description "A book"

  field :id, ID, null: false
  field :name, String, null: true, camelize: false
  field :published_at, Int, null: false,   camelize: false
  field :author_id, Int, null: false,  camelize: false

end