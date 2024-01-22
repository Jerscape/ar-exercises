require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# user = User.create(name: "David", occupation: "Code Artist")

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true )
richmond = Store.create(name: "Richmond", annual_revenue: 126000 , mens_apparel: false , womens_apparel: true )
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true , womens_apparel: false)

# t.column :name, :string
# t.column :annual_revenue, :integer
# t.column :mens_apparel, :boolean
# t.column :womens_apparel, :boolean
# t.timestamps null: false