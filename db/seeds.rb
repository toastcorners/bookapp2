Author.destroy_all
Book.destroy_all
Category.destroy_all
Publisher.destroy_all
#book 1
a1 = Author.create(name:'Sylvia Plath')
c1 = Category.create(name:'Classics')
b1 = Book.create(title: 'The Bell Jar', price: 10.99, stars: 4.0, author_id: 1, category_id: 1, num_of_reviews: 21375)
# book 2
a2 = Author.create(name: 'Carsten Jensen')
c1 = Category.create(name: 'Historical Fiction')
b2 = Book.create(title: 'We, the Drowned', price: 13.99, stars: 4.23, author_id: 2, category_id: 2, num_of_reviews: 1033)
# book 3
a3 = Author.create(name: 'Tara Westover')
c3 = Category.create(name: 'Non-Fiction')
b3 = Book.create(title: 'Educated', price: 14.99, stars: 4.47, author_id: 3, category_id: 3, num_of_reviews: 57083)
# book 4
a4 = Author.create(name: 'Blake Crouch')
c4 = Category.create(name: 'Science Fiction')
b4 = Book.create(title: 'Recursion', price: 11.99, stars: 4.18, author_id: 4, category_id: 4, num_of_reviews: 10645)

# book 5
a5 = Author.create(name: 'Leigh Bardugo')
c5 = Category.create(name: '')
b5 = Book.create(title: 'Ninth House', price: 14.99, stars: 4.09, author_id: 5, category_id: 5, num_of_reviews: 10439)
#book 6
a6 = Author.create(name: 'Kate Quinn')
c6 = Category.create(name: 'Historical Fiction')
b6 = Book.create(title: 'The Alice Network', price: 13.99, stars: 4.27, author_id: 6, category_id: 6, num_of_reviews: 17937)

#book 7
a7 = Author.create(name: 'Taylor Jenkins Reid')
c7 = Category.create(name: 'Historical Fiction')
b7 = Book.create(title: 'The Seven Husbands of Evelyn Hugo', price: 13.99, stars: 4.33, author_id: 7, category_id: 7, num_of_reviews: 23340)