require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

@store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_store = Store.where(mens_apparel: true)
puts @mens_store.name
@mens_store.each do |store|
  puts "Store: #{store.name} | Revenue: #{store.annual_revenue}"
end

@womens_store = Store.where(womens_apparel: true)
puts @womens_store.name
@womens_store.each do |store|
  if store.annual_revenue  < 1000000
  puts "Store: #{store.name} | Revenue: #{store.annual_revenue}"
  end
end