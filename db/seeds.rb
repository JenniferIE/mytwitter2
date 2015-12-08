# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create some users
    User.create(name:'joe bloggs', email:'jb@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'joe Cloggs', email:'jc@here.com', password: "secret", password_confirmation: "secret")
    User.create(name:'jim smith', email:'js@here.com', password: "secret", password_confirmation: "secret")
# 	Create genres
horror = Genre.create(name: 'Horror')
action = Genre.create(name: 'Action')
SF = Genre.create(name: 'Sci-Fi')
mystery = Genre.create(name: 'Mystery')
# create books
Book.create(title: 'horror book', author: 'author 1',isbn: '1111', year: '1993' )
Book.create(title: 'science book', author: 'author 2', isbn: '1112', year: '1993')
# Create some books
book = Book.find(1)
book.contents.create(content: "This is a horror book.")

# Associate some genres with books
Book.find(1).genres << horror
Book.find(2).genres << action