# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  {
    email: 'flavin@gmail.com',
    apelido: 'Flavin',
    password: 'danieldaniel'
  },
  {
    email: 'pedrorault@gmail.com',
    apelido: 'Pedrorault',
    password: 'esqueci'
  },
  {
    email: 'admin@admin.com',
    apelido: 'Admin',
    password: 'adminadmin',
    moderador: true
  },
])
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
    },
    {
      nome: 'RG MS-06S Zaku II',
      qualidade: 'RG',
      ano: 2010,
      escala: '1/144',
      serie: 'Mobile Suit Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/3/3e/RG_Char%27s_Zaku_II_boxart.jpg'
    },
    {
      nome: 'RG GAT-X105+AQM/E-X01 Aile Strike Gundam',
      qualidade: 'RG',
      ano: 2011,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/2/2a/RG_Aile_Strike_Gundam_boxart.jpg'
    },
    {
      nome: 'RG MS-06F Zaku II',
      qualidade: 'RG',
      ano: 2011,
      escala: '1/144',
      serie: 'Mobile Suit Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/d/d9/RG_Mass_Production_Zaku_II_boxart.jpg'
    },
    {
      nome: 'RG ZGMF-X10A Freedom Gundam',
      qualidade: 'RG',
      ano: 2011,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/1/17/RG_Freedom_Gundam_boxart.jpg'
    },
    {
      nome: 'RG FX-550 Skygrasper Launcher/Sword Pack',
      qualidade: 'RG',
      ano: 2012,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/6/65/RG_Skygrasper_boxart.jpg'
    },
    {
      nome: 'RG RX-178 Gundam Mk-II (Titans)',
      qualidade: 'RG',
      ano: 2012,
      escala: '1/144',
      serie: 'Mobile Suit Zeta Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/4/4b/RG_Gundam_MK-II_%28Titans%29_boxart.jpg'
    },
    {
      nome: 'RG RX-178 Gundam Mk-II (AEUG)',
      qualidade: 'RG',
      ano: 2012,
      escala: '1/144',
      serie: 'Mobile Suit Zeta Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/c/c1/RG_Gundam_MK-II_%28AEUG%29_boxart.jpg'
    },
    {
      nome: 'RG ZGMF-X09A Justice Gundam',
      qualidade: 'RG',
      ano: 2012,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/3/36/RG_Justice_Gundam_boxart.jpg'
    },
    {
      nome: 'RG MSZ-006 Zeta Gundam',
      qualidade: 'RG',
      ano: 2012,
      escala: '1/144',
      serie: 'Mobile Suit Zeta Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/2/26/Rg_zeta_boxart.jpg'
    },
    {
      nome: 'RG ZGMF-X42S Destiny Gundam',
      qualidade: 'RG',
      ano: 2013,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED Destiny',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/9/9c/RG_Destiny_Gundam_Box_Art.jpg'
    },
    {
      nome: 'RG RX-78GP01 Gundam "Zephyranthes"',
      qualidade: 'RG',
      ano: 2013,
      escala: '1/144',
      serie: 'Mobile Suit Gundam 0083: Stardust Memory',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/c/ce/RG_GP01_Box_Art.jpg'
    },
    {
      nome: 'RG RX-78GP01-Fb Full Burnern',
      qualidade: 'RG',
      ano: 2013,
      escala: '1/144',
      serie: 'Mobile Suit Gundam 0083: Stardust Memory',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/7/7a/RG_GP01FB_boxart.jpg'
    },
    {
      nome: 'RG ZGMF-X20A Strike Freedom Gundam',
      qualidade: 'RG',
      ano: 2013,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED Destiny',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/4/4a/RG_Strike_Freedom_Box_Art.jpg'
    },
    {
      nome: 'RG GN-001 Gundam Exia',
      qualidade: 'RG',
      ano: 2014,
      escala: '1/144',
      serie: 'Mobile Suit Gundam 00',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/a/a5/RG_Gundam_Exia_boxart.jpeg'
    },
    {
      nome: "RG MSM-07S Z'Gok Commander Type",
      qualidade: 'RG',
      ano: 2014,
      escala: '1/144',
      serie: 'Mobile Suit Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/1/1f/RG_Z%27Gok_Box_Art.jpg'
    },
    {
      nome: 'RG XXXG-00W0 Wing Gundam Zero EW',
      qualidade: 'RG',
      ano: 2014,
      escala: '1/144',
      serie: 'New Mobile Report Gundam Wing: Endless Waltz',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/9/91/RG_Wing_Gundam_Zero_boxart.jpg'
    },
    {
      nome: 'RG GN-0000+GNR-010 00 Raiser',
      qualidade: 'RG',
      ano: 2015,
      escala: '1/144',
      serie: 'Mobile Suit Gundam 00',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/d/d3/RG_00_Raiser_Boxart.jpg'
    },
    {
      nome: 'RG MBF-P02 Gundam Astray Red Frame',
      qualidade: 'RG',
      ano: 2015,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED Astray',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/c/c4/RG_Astray_Red_Frame_Box.jpg'
    },
    {
      nome: 'RG XXXG-01W Wing Gundam EW',
      qualidade: 'RG',
      ano: 2016,
      escala: '1/144',
      serie: 'New Mobile Report Gundam Wing Endless Waltz: The Glory of Losers',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/5/5d/RG_Wing_Gundam_EW_boxart.jpeg'
    },
    {
      nome: 'RG GNT-0000 00 Qan［T］',
      qualidade: 'RG',
      ano: 2016,
      escala: '1/144',
      serie: 'Mobile Suit Gundam 00: A Wakening of the Trailblazer',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/9/97/RG_00_Qan-T_Box_Art.jpg'
    },
    {
      nome: 'RG MSN-06S Sinanju',
      qualidade: 'RG',
      ano: 2016,
      escala: '1/144',
      serie: 'Mobile Suit Gundam Unicorn',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/5/53/RG-Sinanju-box.jpg'
    },
    {
      nome: 'RG GAT-X105B/FP Build Strike Gundam Full Package',
      qualidade: 'RG',
      ano: 2016,
      escala: '1/144',
      serie: 'Gundam Build Fighters',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/e/e5/RG_Build_Strike_Gundam_FP_boxart.jpg'
    },
    {
      nome: 'RG MBF-P01-Re2AMATU Gundam Astray Gold Frame Amatsu Mina',
      qualidade: 'RG',
      ano: 2017,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED Astray',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/6/63/RG-Gundam-Astray-Gold-Frame-Amatsu-Mina-box.jpg'
    },
    {
      nome: 'RG RX-0 Unicorn Gundam',
      qualidade: 'RG',
      ano: 2017,
      escala: '1/144',
      serie: 'Mobile Suit Gundam Unicorn',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/2/2a/RG_25_Gundam_Unicorn_Regular_Box_Art.jpeg'
    },
    {
      nome: 'RG MS-06R-2 Zaku II High Mobility Type (Johnny Ridden Custom)',
      qualidade: 'RG',
      ano: 2017,
      escala: '1/144',
      serie: 'Mobile Suit Variations',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/5/50/RG-Johnny-Ridden%27s-High-Mobility-Zaku-II-boxart.jpg'
    },
    {
      nome: 'RG RX-0［N］ Unicorn Gundam 02 Banshee Norn',
      qualidade: 'RG',
      ano: 2018,
      escala: '1/144',
      serie: 'Mobile Suit Gundam UC',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/b/be/RG_Unicorn_Gundam_02_Banshee_Norn_boxart.jpg'
    },
    {
      nome: 'RG OZ-00MS Tallgeese (EW)',
      qualidade: 'RG',
      ano: 2018,
      escala: '1/144',
      serie: 'Mobile Suit Gundam Wing',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/2/21/RG_Tallgeese_boxart.jpg'
    },
    {
      nome: 'RG MSN-04 Sazabi',
      qualidade: 'RG',
      ano: 2018,
      escala: '1/144',
      serie: "Mobile Suit Gundam: Char's Counterattack",
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/3/31/RG-Sazabi-box.jpg'
    },
    {
      nome: 'RG RX-0 Full Armor Unicorn Gundam',
      qualidade: 'RG',
      ano: 2018,
      escala: '1/144',
      serie: 'Mobile Suit Gundam Unicorn',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/2/23/RG_Full_Armor_Unicorn_Gundam_boxart.jpg'
    },
    {
      nome: 'RG XM-X1 Crossbone Gundam X-1',
      qualidade: 'RG',
      ano: 2019,
      escala: '1/144',
      serie: 'Mobile Suit Crossbone Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/f/ff/RG-Crossbone-Gundam-box.jpg'
    },
    {
      nome: 'RG RX-93 ν Gundam',
      qualidade: 'RG',
      ano: 2019,
      escala: '1/144',
      serie: "Mobile Suit Gundam: Char's Counterattack",
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/f/f0/RG-Nu-Gundam-box.jpg'
    },
    {
      nome: 'RG ZGMF-X56S/α Force Impulse Gundam',
      qualidade: 'RG',
      ano: 2020,
      escala: '1/144',
      serie: 'Mobile Suit Gundam SEED Destiny',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/1/13/RG-Force-Impulse-Gundam-box.jpg'
    },
    {
      nome: 'RG MSN-02 Zeong',
      qualidade: 'RG',
      ano: 2021,
      escala: '1/144',
      serie: 'Mobile Suit Gundam',
      imagem: 'https://static.wikia.nocookie.net/gunplabuilders/images/8/88/RG_Zeong_box.jpg'
    }
])
