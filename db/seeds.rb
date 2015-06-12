# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Book.delete_all

users = User.create [
	{ email: 'admin@gmail.com' , password: '11111111', role: 'admin'},
	{ email: 'gerente@gmail.com', password: '11111111', role: 'gerente'},
	{ email: 'funcionario@gmail.com', password: '11111111', role: 'funcionario'},
	{ email: 'convidado@gmail.com', password: '11111111', role: 'convidado'}
]

books = Book.create [
	{ name: 'Rails 1', description: "This file should contain all the record creation needed to seed the database with its default values."},
	{ name: 'Rails 2', description: "This file should contain all the record creation needed to seed the database with its default values."},
	{ name: 'Rails 3', description: "This file should contain all the record creation needed to seed the database with its default values."},
	{ name: 'Rails 4', description: "This file should contain all the record creation needed to seed the database with its default values."}
]

puts "### #{users.count} Users ###"
users.each do |user|
	puts user.email
end

