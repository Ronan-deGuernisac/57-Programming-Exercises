class String
  def numeric?
    Float(self) != nil rescue false
  end
end

val1 = 0
num1 = 0
val2 = 0
num2 = 0
answer = 0

loop { # main loop

  loop do
    puts
    print "What is the first number? "
    val1 = gets
    if val1.numeric?
      if val1.to_i < 0
        puts
        puts "the number you entered is negative, please use positives numbers."
      else val1.to_i > 0
        num1 = val1.to_i
          break
      end
    else
      puts
      puts "the value you entred is not a number, please try again using numerics."
    end
  end

  loop do
    puts
    print "What is the second number? "
    val2 = gets
    if val2.numeric?
      if val2.to_i < 0
        puts
        puts "the number you entered is negative, please use possitives numbers."
      else val2.to_i > 0
          num2 = val2.to_i
            break
      end
    else
      puts
      puts "the value you entered is not a number, please try again using numerics."
    end
  end

  puts
  puts "#{num1} + #{num2} = #{num1+num2}"
  puts
  puts "#{num1} - #{num2} = #{num1-num2}"
  puts
  puts "#{num1} * #{num2} = #{num1*num2}"
  puts
  puts "#{num1} / #{num2} = #{num1/num2}"
  puts



    puts "Enter 'Y' if you wish to do an other calculation: "
    answer = gets
    break unless answer.downcase().start_with?('y')
}

puts
puts "Thank you for using the SimpleMath Calculator, Good bye!"
