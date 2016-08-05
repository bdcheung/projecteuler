def smallest_multiple(range)
  raise TypeError unless range.kind_of?(Range)
    current_multiple ||= nil
    range.each do |n|
      next if n==1 || n==range.max
      i||=1

      product = (current_multiple || n)*i

      while product%(n+1)!=0
        i+=1
        product = (current_multiple || n)*i
      end
        current_multiple=product
        i=1
    end
  return current_multiple
end

# The below is my first iteration, which was slow and costly.

# max = range.to_a.inject(1){|product, x| product * x}
#
# factors = {}
# range.to_a.reverse.each do |int|
#   next if int==1
#   i=1
#   product=0
#   factors[int] = []
#   while product <= max
#     product = int*i
#     factors[int] << product
#     i+=1
#   end
# end
#
# overlap = []
# range.to_a.reverse.each_with_index do |int,idx|
#   next if int==1
#   if idx==0
#     overlap = factors[int] & factors[int-1]
#   else
#     puts "#{overlap.count} elements to compare"
#     overlap = overlap & factors[int]
#   end
# end
# overlap.min