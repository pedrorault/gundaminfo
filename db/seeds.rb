# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gundams = Toy.create(
  [
    {
      nome: 'Zakku II',
      qualidade: 'RG',
      ano: 1999,
      escala: '1/144',
      serie: 'Gundam The Origin',
      imagem: 'https://static.wikia.nocookie.net/gundam/images/8/8d/Ms-06f.jpg'
    },
    {
      nome: 'RG RX-78-2 Gundam',
      qualidade: 'RG',
      ano: 2010,
      escala: '1/144',
      serie: 'Mobile Suit Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/9/9d/RG-RX-78-2-Gundam-Boxart.jpg'
    }
])
