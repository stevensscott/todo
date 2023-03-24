class Category < ApplicationRecord

has_many :category_to_dos
has_many :to_dos, through: :category_to_dos

end
