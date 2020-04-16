#blueprint, will revisit to fix later
#CLI actions..
require "tty-prompt"

prompt = TTY::Prompt.new

def greeting
#greets user 
prompt.ask("First things, first, what should I call you?")
name = gets.chomp
puts "Hi #{name}! Welcome to nextread. This app is designed to help book lovers find their next read(get it?)📖"
end

def browse_by
#user decides how they want to browse book database
prompt.select("How would you like to browse our curated selection?", %w(Author🖋 Category📚 Book📖), required: true)
answer = gets.chomp
    if answer == author #author search commands
        browse = Author.find_by(name: answer)
            puts "Enter the author's name you'd like to browse by:"
            a_name = gets.chomp
                if Author.exists(a_name)
                    puts "#{a_name} has #{Book.where(author: a_name).count} books in our database."
                    prompt.yes?("")



            if answer == title #book title search commands
                browse = Book.find_by(title: answer)
                if answer == category
                    browse = Category.find_by(name: answer)
                end
            end
        end
    puts browse
end







