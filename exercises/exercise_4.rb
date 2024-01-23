require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


@surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
@whistler = Store.create(name: "Whistler" , annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

# Your code goes here ...

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Store name: #{store.name}, annual_revenue: #{store.annual_revenue}, VALIDATION: #{store.mens_apparel}"
end

#I note the curious syntax of the next line, where the column name and condition are wrappped in ''
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
#alternative method for multiple where (put them in a hash)
# @womens_stores = Store.where(womens_apparel: true, annual_revenue: 0..99999)
@womens_stores.each do |store|
  puts "Store name: #{store.name}, annual_revenue: #{store.annual_revenue}, VALIDATION: #{store.womens_apparel}"
end

