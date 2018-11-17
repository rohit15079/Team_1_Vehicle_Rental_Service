# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Agent.create(orgName: "Org1", regNo: 0001, email: "org@gmail.com", fName: "firstOrg", lName: "lastOrg",
             locality: "Delhi", city: "Delhi", pinCode: 1234, password: "12345678", password_confirmation: "12345678")

Agent.create(orgName: "Org2", regNo: 0002, email: "org2@gmail.com", fName: "firstOrg2", lName: "lastOrg2",
             locality: "Mumbai", city: "Mumbai", pinCode: 4321, password: "12345678", password_confirmation: "12345678")