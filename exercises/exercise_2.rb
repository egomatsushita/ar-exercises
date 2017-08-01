require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.update(name: 'North Vancouver')

puts "Update name of store 1 to #{@store1.name}"