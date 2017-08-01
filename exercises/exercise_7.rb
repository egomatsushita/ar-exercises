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
  validates :first_name,
            presence: true

  validates :last_name,
            presence: true

  validates :hourl_rate,
            numericality: true,
            length: {minimum: 40, maximum: 200}

  validates :store_id,
            presence: true

end

class Store < ActiveRecord::Base
  validates :name,
            presence: true,
            length: {minimum: 3}

  validates :annual_revenue,
            numericality: true,
            length: {minimum: 0}

  validate :carry_mens_or_womens_apparel,
            on: :create

  def carry_mens_or_womens_apparel
    unless :mens_apparel == false && :womens_apparel == false
      errors.add("Sorry, ", "there should be at least one of the men's or women's apparel.")
    end
  end
end

print "Enter a store name: "
user_store = $stdin.gets.chomp
store = Store.create(name: user_store)
puts store.errors.full_messages


