class Author < ApplicationRecord
  has_many :books

  def full_name
    "#{first_name} #{last_name}"
  end

  def check_method_predecense
    "From Model"
  end


  def coordinates
    [rand(90), rand(90)]
  end

  def pulbication_years
    (1..rand(10)).to_a.map {1900 - rand(100)}
  end

end
