class Types::BookInputType < GraphQL::Schema::InputObject
  graphql_name "BookInputType"
  description "All the attrs for manipulating a book"

  argument :id, ID, required: false
  argument :name, String, required: false
  argument :published_at, Int, required: true,  camelize: false
  argument :author_id, Int, required: false,  camelize: false
end