puts "What's the side length of the square?"
side_length = gets.chomp.to_i
uppermost_square = side_length**2
number_of_rings = (side_length-1)/2
digits = (1..uppermost_square).to_a
@sum = 0
@sum += digits.first
i=1
x=0
while i <= number_of_rings
  skip_interval = i*2 - 1
  x||=0
  4.times do
    x+=1+skip_interval
    puts "Digit is #{digits[x]}"
    @sum += digits[x]
  end
  i+=1
end
