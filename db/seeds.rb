# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.destroy_all
roles = Role.create([{id: 1 , name: 'admin'},
                       {id: 2 , name: 'manager'}])
admin = User.first_or_create({username: 'admin', password: '12345678', role_id: 1, full_name: "admin"})



