def distinct_powers(a,b)
  unless (a.kind_of?(Range) || a.kind_of?(Array)) && (b.kind_of?(Range) || b.kind_of?(Array))
    puts "Please provide ranges or arrays as arguments."
  else
    @products = []
    i=a.min
    while i < a.max+1 do
      x = b.min
      while x < b.max+1 do
        @products << i**x
        x+=1
      end
      i+=1
    end
    puts "There are #{@products.uniq.count} distinct terms generated by a^b for #{a.min}<=a<=#{a.max} and #{b.min}<=b<=#{b.max}"
  end
end

a = Range.new(2,100)
b = Range.new(2,100)
distinct_powers(a,b)
# There are 9183 distinct terms generated by a^b for 2<=a<=100 and 2<=b<=100