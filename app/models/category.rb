class Category < ActiveRecord::Base
    has_many :books
    has_many :authors
    has_many :publishers

def this_cat
Book.where(category: self)
end

def most_reviewed
this_cat.order(num_of_reviews: :desc).first
end

def best
this_cat.order(stars: :desc).first
end




end