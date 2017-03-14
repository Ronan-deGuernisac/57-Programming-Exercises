#
#---------------------------------Prompt---------------------------------------
#
puts
puts "Welcome, to our revolutionary Tip Calculator."
puts
puts "there is an example of how it work:"
puts "How much is the bill?"
puts "100"
puts "How many percent of Tip do you wish to give?"
puts "15"
puts "The Tip is: $15.0"
puts "The total is $115.0"
puts
puts "How much is the bill?"
bill_initial_amount = gets.chomp.to_f
puts
puts "How many percent of Tip do you wish to give?"
tip_percentage = gets.chomp.to_f

#---------------------------------Process---------------------------------------

tip_amount = (bill_initial_amount * (tip_percentage / 100))
bill_total = (bill_initial_amount + tip_amount).round(2)

def tip_amount
  return tip_amount
end

def bill_total
  return bill_total
end

#---------------------------------Display---------------------------------------
puts
puts "The Tip is $#{tip_amount}"
puts "The Total is $#{bill_total}"
