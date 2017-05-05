puts "How much is the bill ($)?"
bill = gets.to_f
x = bill * 20 / 100
#x = bill.percent_of(20)
puts "The 20% Tip for your meal is:"
puts "$#{x}."
total = bill + x
puts "The total bill  is: $#{total}0"
