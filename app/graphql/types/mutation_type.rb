class Types::MutationType < Types::BaseObject

  ##Alternative 1
  # field :create_author, AuthorType, null: true, description: "Create an Author" do
  #   argument :first_name, String, required: true, camelize: false
  #   argument :last_name, String, required: true,  camelize: false
  #   argument :yob, Int, required: false
  #   argument :is_alive, Boolean, required: true,  camelize: false
  # end

  # def create_author(first_name:, last_name:, yob:, is_alive:)
  #   Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
  # end


  #Alternative 2
  field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor
  field :create_book, Types::BookType, mutation: Mutations::Book
  field :update_book, Types::BookType, mutation: Mutations::Book

end
