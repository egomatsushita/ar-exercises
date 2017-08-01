require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is #{@total_revenue}"
@average_annual_revenue = Store.average(:annual_revenue)
puts "Average annual revenue is #{@average_annual_revenue}"
@number_1M_sales = Store.where("annual_revenue > ?", 1000000).count
puts "Number of stores that are generating more than $1M in annual sales is #{@number_1M_sales}"
