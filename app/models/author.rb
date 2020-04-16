class Author < ActiveRecord::Base
    has_many :books
    has_many :categories
    has_many :publishers, through: :books

def my_books
Book.find_by(author_id: self)
binding.pry
end

def authors_best
self.my_books.order(stars: :desc).first
end


end