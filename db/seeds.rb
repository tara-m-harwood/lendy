# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lend.destroy_all
Borrower.destroy_all
Item.destroy_all
User.destroy_all

phil = User.create username: 'Phil'
tara = User.create username: 'Tara'

lawn = Item.create name: 'Lawn Mower', user: phil
book = Item.create name: 'The Gashlycrumb Tinies', user: tara

zoe = Borrower.create name: 'Zoe'

amy = Borrower.create name: 'Amy'
basil = Borrower.create name: 'Basil'
clara = Borrower.create name: 'Clara'
desmond = Borrower.create name: 'Desmond'
ernest = Borrower.create name: 'Ernest'

pod = Borrower.create name: 'Pod Clock'

Lend.create item: book, borrower: desmond, start_date: '2018-01-01', end_date: '2018-12-31'
Lend.create item: book, borrower: clara, start_date: '2019-01-01', end_date: '2019-12-31'
Lend.create item: book, borrower: amy, start_date: '2021-01-01', end_date: '2021-12-31'
Lend.create item: book, borrower: ernest, start_date: '2017-01-01', end_date: '2017-12-31'
Lend.create item: book, borrower: basil, start_date: '2020-01-01', end_date: '2020-12-31'

Lend.create item: lawn, borrower: pod, start_date: '2021-02-01', end_date: '2021-03-11'




