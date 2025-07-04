require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store

  #validations
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

class Store < ActiveRecord::Base
  has_many :employees

  #validations
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  private
  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least men's or women's apparel")
    end
  end
end

puts "Please provide a store name."
store_name = gets.chomp
puts "store name: #{store_name}"

new_store = Store.create(name: store_name)

new_store.errors.full_messages.each do |message|
  puts message
end