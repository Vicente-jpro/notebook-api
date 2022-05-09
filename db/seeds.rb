# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cadastrado os contactos..."
100.times do |i| 
	Contact.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		birthdate: Faker::Date.between(from: '1990-09-23', to: '2022-09-25')
	)
end

puts "Contactos cadastrado com sucesso."