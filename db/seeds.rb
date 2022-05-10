# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cadastrado dos tipos de contactos..."
3.times do |i| 
	Kind.create!(
		description: "Amizade"
	)
	Kind.create!(
		description: "Trabalho"
	)
	Kind.create!(
		description: "Jogo"
	)
end
puts "Tipos de contactos cadastrado com sucesso."


puts "Cadastrado os contactos..."
100.times do |i| 
	Contact.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		birthdate: Faker::Date.between(from: '1990-09-23', to: '2022-09-25'),
		kind: Kind.all.sample
	)
end

puts "Contactos cadastrado com sucesso."


