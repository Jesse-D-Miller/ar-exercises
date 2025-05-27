require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
end

# Employees for Store 1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jesse", last_name: "Emler", hourly_rate: 55)
@store1.employees.create(first_name: "Ava", last_name: "Smith", hourly_rate: 45)
@store1.employees.create(first_name: "Liam", last_name: "Brown", hourly_rate: 50)
@store1.employees.create(first_name: "Olivia", last_name: "Jones", hourly_rate: 47)
@store1.employees.create(first_name: "Noah", last_name: "Garcia", hourly_rate: 52)
@store1.employees.create(first_name: "Emma", last_name: "Lopez", hourly_rate: 49)
@store1.employees.create(first_name: "Mason", last_name: "Lee", hourly_rate: 46)
@store1.employees.create(first_name: "Sophia", last_name: "Clark", hourly_rate: 54)
@store1.employees.create(first_name: "Lucas", last_name: "Hall", hourly_rate: 53)

# Employees for Store 2
@store2.employees.create(first_name: "Isabella", last_name: "Young", hourly_rate: 50)
@store2.employees.create(first_name: "Ethan", last_name: "Allen", hourly_rate: 51)
@store2.employees.create(first_name: "Mia", last_name: "Wright", hourly_rate: 48)
@store2.employees.create(first_name: "James", last_name: "King", hourly_rate: 55)
@store2.employees.create(first_name: "Charlotte", last_name: "Scott", hourly_rate: 46)
@store2.employees.create(first_name: "Benjamin", last_name: "Green", hourly_rate: 60)
@store2.employees.create(first_name: "Amelia", last_name: "Baker", hourly_rate: 53)
@store2.employees.create(first_name: "Henry", last_name: "Adams", hourly_rate: 47)
@store2.employees.create(first_name: "Harper", last_name: "Nelson", hourly_rate: 52)
@store2.employees.create(first_name: "Logan", last_name: "Carter", hourly_rate: 49)
