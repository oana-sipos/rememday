# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Entry.delete_all
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e soare',   mood: 5, weight: 45, facebook_id: '1370813229')
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e bine',    mood: 3, weight: 55, facebook_id: '534606643')
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e greu',    mood: 1, weight: 45, facebook_id: '1370813229')
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e usor',    mood: 5, weight: 55, facebook_id: nil)
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e iubire',  mood: 2, weight: 45, facebook_id: nil)
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e trist',   mood: 4, weight: 55, facebook_id: '534606643')
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e soare',   mood: 2, weight: 45, facebook_id: '1370813229')
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e oana',    mood: 1, weight: 55, facebook_id: '534606643')
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e tassos',  mood: 5, weight: 45, facebook_id: '1370813229')
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e noi',     mood: 5, weight: 55, facebook_id: '534606643')
Entry.create(name: 'oanasipos@gmail.com',         date: '2015-02-10', memory: 'Azi e blue',    mood: 3, weight: 45, facebook_id: '1370813229')
Entry.create(name: 'tassos.natsakis@kuleuven.be', date: '2015-02-10', memory: 'Azi e vineri!', mood: 5, weight: 55, facebook_id: '534606643')
