# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'Dmitry77', firstname: 'Dmitry', lastname: 'Gorodnichiy', 
	role: 'administrator', email: 'dm@gmail.com', region: 'UA', password: '123456')