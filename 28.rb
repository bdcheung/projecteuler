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