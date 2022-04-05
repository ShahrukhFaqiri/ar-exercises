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
  validates :first_name, :last_name, :hourly_rate,:store,
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence: true 
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}  
  validates :name, length: { minimum: 3 }
  validate :carry_apparel   
 end

puts "Store: "
store_name = gets.chomp.to_s

new_store = Store.create(name: store_name, annual_revenue: 1200000, mens_apparel: true, womens_apparel: true)