# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gundams = GundamModel.create(
  [
    {
      nome: 'Zakku II',
      qualidade: 'RG',
      ano: 1999,
      escala: '1/144',
      serie: 'Gundam The Origin',
      imagem: 'https://static.wikia.nocookie.net/gundam/images/8/8d/Ms-06f.jpg'
    }
])
