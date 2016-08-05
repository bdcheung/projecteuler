@digit_fifth_powers = {}

(0..9).each do |n|
  @digit_fifth_powers[n] = n**5
end

@success = []


(2..999999).each do |x|
  @sum = 0
  digits = x.to_s.chars.map(&:to_i)
  digits.each do |y|
    @sum += @digit_fifth_powers[y]
  end
  @success << x if @sum==x
end
@success.inject(0){|sum,x| sum+x}