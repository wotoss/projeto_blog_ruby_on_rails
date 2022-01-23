# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#estes são os authores que eu quero ter em minha base de dados inicial
puts 'Assim que for apagado todos o banco estes dados serão cadastrados !'
Author.create(first_name: 'Stephen', last_name: 'King')
Author.create(first_name: 'Stephen', last_name: 'Hawking')
