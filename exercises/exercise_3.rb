require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

puts "this is the count of stores: #{Store.count}"
@store3 = Store.find_by(id: 3)
@store3.destroy
puts "this is the NEW count of stores: #{Store.count}"

#store stable structure for reference
# t.column :name, :string
# t.column :annual_revenue, :integer
# t.column :mens_apparel, :boolean
# t.column :womens_apparel, :boolean
# t.timestamps null: false