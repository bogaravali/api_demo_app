# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "==========Create Users================="
user1 = User.create(first_name: 'Rohit', last_name: 'Boga', email: 'rohitboga@gmail.com')
user2 = User.create(first_name: 'Ravali', last_name: 'Boga', email: "ravaliboga@gmail.com")
user3 = User.create(first_name: 'Jimmy', last_name: 'Sen', email: "jimmy@gmail.com")
user4 = User.create(first_name: 'Tom', last_name: 'Cruise', email: "Tom@gmail.com")

puts "=========Create Libraries================="
library1 = Library.create(name: 'Library 1')
library2 = Library.create(name: 'Library 2')

puts "==========Create Books================="
book1 = Book.create(name: 'Tom Jones', library_id: library1.id, quantity: 10)
book2 = Book.create(name: 'The Lion, the Witch, and the Wardrobe', library_id: library1.id, quantity: 10)
book3 = Book.create(name: 'And Then There Were None', library_id: library2.id, quantity: 10)
book4 = Book.create(name: 'Harry Potter and the Sorcerers Stone', library_id: library2.id, quantity: 10)

puts "==========Create Bookings================="
UserBooking.create(user: user1, book: book1, checkout_date: '25/6/2023')
UserBooking.create(user: user3, book: book3, checkout_date: '11/4/2023')
UserBooking.create(user: user4, book: book3, checkout_date: '15/5/2023')
