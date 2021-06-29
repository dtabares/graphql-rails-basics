class Mutations::CreateAuthor < GraphQL::Schema::Mutation
  null true
  argument :first_name, String, { required: true, camelize: false }
  argument :last_name, String, { required: true,  camelize: false }
  argument :yob, Int, required: false
  argument :is_alive, Boolean, { required: true,  camelize: false }

  def resolve(first_name:, last_name:, yob:, is_alive:)
    Author.create(first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive)
  end

  def self.accessible?(context)
    context[:current_user]&.is_superadmin?
  end

end