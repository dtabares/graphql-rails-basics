class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :test_field, String, null: false,
    description: "An example field added by the generator"
  def test_field
    "Hello World!"
  end

  field :author, Types::AuthorType, null: true,
    description: "An author" do
      argument :id, ID, required: true
  end

  field :authors, [Types::AuthorType], null: false

  field :book, Types::BookType, null: true,
  description: "A book" do
    argument :id, ID, required: true
  end

  field :books, [Types::BookType], null: false

  field :login, String, null: true, description: "Login a user" do
    argument :email, String, required: true
    argument :password, String, required: true
  end

  field :current_user, Types::UserType, null: true, description: "The currently logged in user"

  field :logout, Boolean, null: false

  def author(id:)
    Author.where(id: id).first
  end

  def authors
    Author.all
  end

  def book(id:)
    Book.where(id: id).first
  end

  def books
    Book.all
  end

  def login(email:, password:)
    user = User.find_by(email: email)&.authenticate(password)
    user.sessions.create.key if user
  end

  def current_user
    context[:current_user]
  end

  def logout
    Session.where(id: context[:session_id]).destroy_all
    true
  end



end
