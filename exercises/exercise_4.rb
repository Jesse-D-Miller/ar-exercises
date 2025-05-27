require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

puts "Stores with mens apparel:"
@mens_stores.each do |store|
  puts store.name
end

@womens_store_low_revenue = Store.where("womens_apparel = ? AND annual_revenue <= ?", true, 10000000)

puts "Stores with womens apparel that gross less than 1milllion dollars"
@womens_store_low_revenue.each do |store|
  puts store.name
end