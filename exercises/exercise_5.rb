require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@company_revenue = Store.sum(:annual_revenue)

puts "total company revenue: #{@company_revenue}"

@average_store_revenue = @company_revenue / Store.count

puts "average store revenue: #{@average_store_revenue}"

@high_revenue_stores = Store.where("annual_revenue > ?", 1000000).count

puts "number of stores with revenues over $1M: #{@high_revenue_stores}"