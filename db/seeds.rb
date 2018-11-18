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

vehicle1=Vehicle.create(category: "4 Seater", isAc: "0", model: "Model1", manufacturer:"M1", cost: 50)
vehicle2=Vehicle.create(category: "4 Seater", isAc: "1", model: "Model2", manufacturer:"M2", cost: 100)
vehicle3=Vehicle.create(category: "5 Seater", isAc: "0", model: "Model3", manufacturer:"M1", cost: 150)
vehicle4=Vehicle.create(category: "5 Seater", isAc: "1", model: "Model4", manufacturer:"M2", cost: 200)
vehicle5=Vehicle.create(category: "7 Seater", isAc: "0", model: "Model5", manufacturer:"M1", cost: 250)
vehicle6=Vehicle.create(category: "7 Seater", isAc: "1", model: "Model6", manufacturer:"M2", cost: 300)

Booking.create(vehicle_id: vehicle1.id, start_date: "2016-11-17", end_date: "2016-11-25", customer_name: "Customer1", customer_contact: "customer_contact")