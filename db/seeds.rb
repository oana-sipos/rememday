# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Entry.delete_all
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e soare',   mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e bine',    mood: 5, weight: 55)
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e greu',    mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e usor',    mood: 5, weight: 55)
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e iubire',  mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e trist',   mood: 5, weight: 55)
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e soare',   mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e oana',    mood: 5, weight: 55)
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e tassos',  mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e noi',     mood: 5, weight: 55)
Entry.create(name: 'oana',   date: '2015-02-10', memory: 'Azi e blue',    mood: 5, weight: 55)
Entry.create(name: 'tassos', date: '2015-02-10', memory: 'Azi e vineri!', mood: 5, weight: 55)
