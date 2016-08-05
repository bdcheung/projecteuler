# Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
#                                                                                                           21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
#  What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

puts "What is the side length?"
spiral_size = gets.chomp.to_i

@ring = 0
@sum = 0
while (@ring*2+1) <= spiral_size
  #puts "On Ring #{@ring}"
  if @ring == 0
    @sum += 1
    @ring+=1
  else
    row_length = @ring*2 + 1
    #puts "Row length is #{row_length}"
    upper_right  = row_length**2
    upper_left   = row_length**2 - row_length + 1                                     # upper_right - row_length + 1
    bottom_left  = row_length**2 - row_length + 1 - row_length + 1                    # upper_left - row_length + 1
    bottom_right = row_length**2 - row_length + 1 - row_length + 1 - row_length + 1   # bottom_left - row_length + 1
    #puts "Diagnols are #{upper_right} - #{upper_left} - #{bottom_left} - #{bottom_right}"
    @sum = @sum + upper_right + upper_left + bottom_left + bottom_right
    @ring += 1
  end
end
puts "The sum of the diagonals is #{@sum}"