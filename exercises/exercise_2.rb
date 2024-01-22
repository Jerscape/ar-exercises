require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
puts "store 1: #{@store1.name}"

@store2 = Store.find_by(id: 2)
puts "store 2: #{@store2.name}"

@store1.update(name: "Gibsons")
@store1 = Store.find_by(id: 1)
puts "store 1 updated name: #{@store1.name}"