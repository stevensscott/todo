class ToDo < ApplicationRecord

belongs_to :user
has_many :category_to_dos
has_many :categories, through: :category_to_dos


end
