require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@burnaby.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@burnaby.employees.create(first_name: "Juniper", last_name: "Junot", hourly_rate: 65)
@burnaby.employees.create(first_name: "Jeeves", last_name: "DeBenedet", hourly_rate: 65)
@yaletown.employees.create(first_name: "Davey", last_name: "Crockett", hourly_rate: 40)
@yaletown.employees.create(first_name: "Blanche", last_name: "Devereaux", hourly_rate: 55)
@yaletown.employees.create(first_name: "Kurt", last_name: "Vonnegut", hourly_rate: 55)
@yaletown.employees.create(first_name: "Gabby", last_name: "Devereaux", hourly_rate: 55)