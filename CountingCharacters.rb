input = 0
loop do
  puts "You are prompted to input something"
  input = gets.chomp
  if input.length != 0
    puts "#{input} as #{input.length} characters"
    break
  end
end
