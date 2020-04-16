class Publisher < ActiveRecord::Base
has_many :authors
has_many :books
has_many :categories, through: :books


end