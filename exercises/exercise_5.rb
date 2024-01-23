require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


# Your code goes here ...

total_revenue = Store.sum('annual_revenue')
puts "this is the total revenue of all stores: #{total_revenue}"

avg_revenue = Store.average('annual_revenue')
puts "average revenue: #{avg_revenue}"

puts "----printing out all stores to validate output----"
all_stores = Store.all

all_stores.each do |store|
  puts "name: #{store.name}, revenue: #{store.annual_revenue}"
end 

top_revenue = Store.where('annual_revenue > ?', 1000000).count
puts "Count of stores over 1,000,000 in revenue: #{top_revenue}"
