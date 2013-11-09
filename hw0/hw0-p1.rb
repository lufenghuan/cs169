def sum (int_array)
  r=0
  int_array.each do |i|
    r+=i
  end
  r
end

# Takes an array of integers as an argument and 
# returns the sum of its two largest elements
def max_2_sum (int_array)
  r = 0
  len = int_array.length
  if len == 0
    r = 0
  elsif len == 1
    r = int_array.first
  else
    r = sum (int_array.sort{|x,y| y <=> x}.take(2))
  end
  r
end

# Returns true if exactly two elements in 
# the array of integers sum to n
def sum_to_n? (int_array, n)
  i = 0
  j = int_array.length - 1

  # empty array
  if j == -1 
    return n == 0
  end

  int_array.sort!
  count = 0
  while i < j do
    sum = int_array.at(i) + int_array.at(j)
    if sum == n
      if count == 1
        return false
      else
        count += 1
          i += 1
          j -= 1
      end
    elsif sum > n
      j -= 1
    else
      i += 1
    end
  end
  count == 1
end


=begin
puts "sum [1,2,3]"
puts sum [1,2,3]

puts "\nsum []"
puts sum []

puts "\nmax_2_sum"
puts max_2_sum [2,3,1]

puts "\nsum_to_n?"
puts (sum_to_n?([], 0)) == true
puts (sum_to_n?([], 1)) == false 
puts (sum_to_n?([1,2,4,5], 3)) == true
=end

