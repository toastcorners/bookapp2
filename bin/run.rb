require "tty-prompt"
require_relative "../config/environment.rb"


prompt = TTY::Prompt.new
#--------------------
result = prompt.ask("First things first, what should I call you?")#greets user 
prompt.say("Hi #{result}! Welcome to nextread. This app is designed to help book lovers find their next read(get it?)📖")
#------------------
howtobrowse = prompt.select("How would you like to browse our curated selection?", %w(Author🖋 Category📚 Book📖))#user decides how they want to browse book database
    if howtobrowse == 'Author🖋' #author search commands
    enter_a = prompt.ask("Enter the author's name you'd like to browse by:")
        users_author = Book.all.select {|book| book.author.name == enter_a}
        our_db = prompt.say("#{enter_a} has #{users_author.count} book(s) in our database. This author's most reviewed book is #{Author.find_by(name: enter_a).books.order(num_of_reviews: :desc).first.title}.") 
        ask_to_add = prompt.yes?("Would you like to add this book to your shelf?")
        if ask_to_add == true
            add = Bookshelf.create
            booktoadd = Book.where(author: enter_a)
            add << booktoadd
        #                 else
        #                     prompt.say("Let's find something more your speed.")
        #                     Book.all.sample
        #             
                    



        # elsif answer == title #book title search commands
        # browse = Book.find_by(title: answer)
        # bookanswer = gets.chomp
        #     if Book.exists?(bookanswer)
        #         Book.find_by(title: bookanswer)
        #     else
        #         prompt.yes?("Sorry, this book isn't in our small and cozy database yet 😓. Would you like us to recommend something else?")
        #             yesorno = gets.chomp
        #                 if yesorno == yes
        #                     Book.all.sample
        #                 else
                            
        #                     #add logic


        #                 end
        #             end
        #         end






#     else answer == category
#         browse = Category.find_by(name: answer)
#                 end
#             end
#         end
#     puts browse

            end
        
            end


