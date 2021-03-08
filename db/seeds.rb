# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

phil = User.create username: 'Phil'
tara = User.create username: 'Tara'

lawn = Item.create name: 'Lawn Mower', user: phil
book = Item.create name: 'The Gashlycrumb Tinies', user: tara

zoe = Borrower.create name: 'Zoe'
pod = Borrower.create name: 'Pod Clock'

Lend.create item: book, borrower: zoe, start_date: '2021-03-01', end_date: '2021-04-11'
Lend.create item: lawn, borrower: pod, start_date: '2021-02-01', end_date: '2021-03-11'




