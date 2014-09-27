# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
         name: "André Santos",
         bsc_number: "a60994",
         msc_number: "pg25329",
         phd_number: "",
         email: "andreccdr@gmail.com",
         identity_card:"14141834",
         phone:"919200815",
         address: "Ribeirão",
         birth_date: Time.now,
         membership: 972,
         paid: true
         )