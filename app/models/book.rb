class Book < ActiveRecord::Base
belongs_to :author
belongs_to :category
belongs_to :publisher

def self.most_reviewed
ordered = self.order(num_of_reviews: :desc)
ordered.first
end

def self.most_stars
ordered = self.order(stars: :desc)
ordered.first
end

def self.lowest_rated
ordered = self.order(stars: :asc)
ordered.first
end

#def self.best_cheap
    #self
#end

end