# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fim = (Time.now - 12.years).to_i
comeco = (Time.now - 60.years).to_i
200.times do
  random_date = Time.at(rand(fim - comeco)) + comeco
  nome = Faker::Name.name
  puts "Gerando usuário -- #{nome} --"
  Usuario.create(nome: nome, data_nascimento: random_date, telefone: Faker::PhoneNumber.cell_phone)
  puts "Usuário -- #{nome} -- gerado com sucesso"
end

80.times do
  titulo = Faker::Movie.title
  puts "Gerando filme -- #{titulo} --"
  Filme.create(nome: titulo, classificacao: rand(6..18), nota: rand(0..10))
  puts "Filme -- #{titulo} -- gerado com sucesso"
end

usuarios = Usuario.all
filmes = Filme.all

usuarios.each do |usuario|
  filme = filmes.sample
  puts "Definindo filme -- #{filme.nome} -- como favorito de -- #{usuario.nome} --"
  FilmeFavorito.create(filme: filme, usuario: usuario)
  puts "Filme -- #{filme.nome} -- como favorito de -- #{usuario.nome} --"
end