class Mutations::Book < GraphQL::Schema::Mutation
  null true
  argument :book, Types::BookInputType, required: true
  description "Manipulates a Book"

  def resolve(book:)
    book_params = book.to_h
    send(context[:operation_name].underscore.to_sym, book_params)
  end


  private

  def create_book(book_params)
    ::Book.create(book_params)
  end


  def update_book(book_params)
    book = ::Book.find(book_params[:id])
    book.update(book_params)
  end

end