
class String
  def numeric?
    Float(self) != nil rescue false
  end
end

bill_amount = 0
tip_rate = 0


puts "- - - - - TIP CALCULATOR - - - - -".center(80)
puts
puts "-- Welcome at You! --".center(80)
puts
puts "-- Enjoy our Tip Calculator any time you need, it is Free to use!! --".center(80)
puts
puts "Here, is a simple example of how to use the Tip Calculator:".center(80)
puts "How much is the bill you want to tip from?".center(80)
puts "$100".center(80)
puts
puts "Of how many percent do you wish to tip?".center(80)
puts "15".center(80)
puts

loop do # main loop

  loop do
    puts "How much is your bill?"
    print "$"
    v1 = gets.chomp
    if v1.numeric? == true
      if v1.to_f > 0
        bill_amount = v1.to_f
          break
      else v1.to_f < 0
        puts "the number you entered is negative. Please, try again using possitive values"
        puts
      end
    else
        puts "Please, enter a numeric value"
        puts
    end
  end

  loop do
    puts "Of how many percent do you wish to tip?"
    print "%"
    v2 = gets.chomp
    if v2.numeric? == true
      if v2.to_f > 0
        tip_rate = v2.to_f
        break
      else v2.to_f < 0
        puts "the number you entered is negative. Please, try again using possitive values"
        puts
      end
    else
      puts "Please, enter a numeric value"
      puts
    end
  end

  tip = ((bill_amount) * (tip_rate / 100)).round(2)
  total = ((bill_amount) + (tip)).round(2)
  puts
  puts "The tip is $#{tip}"
  puts "The new total is $#{total}"
  puts
  puts "If you wish to perform an other operation say: 'Y'"
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')

end
  puts
  puts "Thank you for using the Tip Calculator, Good bye!"
