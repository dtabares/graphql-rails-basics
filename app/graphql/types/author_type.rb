class Types::AuthorType < Types::BaseObject
  description "A book author"

  field :id, ID, null: false
  field :first_name, String, null: true, camelize: false
  field :last_name, String, null: true,  camelize: false
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true,  camelize: false
  field :full_name, String, null: true, camelize: false
  field :full_name_alternative, String, null: true, camelize: false
  field :check_method_predecense, String, null: true, camelize: false



  def full_name_alternative
    "#{object.first_name} #{object.last_name}"
  end

  def check_method_predecense
    "From Type"
  end

  field :coordinates, Types::CoordinatesType, null: false
  field :pulbication_years, [Int], null: false

end