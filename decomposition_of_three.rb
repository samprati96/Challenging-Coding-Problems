three_multiples = [1, 3, 9, 27, 81]

puts "Please enter the number of your choice:"
num = gets.to_i
result = []
return num if three_multiples.any?(num)
hash = {}

three_multiples.each_with_index do |val, index|
  if val >= num
  	result << val
    hash[:element] = val
    hash[:index]
    break
  end
end
puts "hash #{hash}"

  num1 = hash[:element]
  num2 = num

  counter = 1
loop do
  diff = num1 - num2
  puts "diff #{diff}"
  puts "num1 #{num1}"
  puts "num2 #{num2}"

  if three_multiples.any?(diff)
  	result << -diff
  	break
  else
  	three_multiples[0..hash[:index]].reverse.each_with_index do |val, index|
  		if val <= diff
           result << -val
           num1 = diff
           num2 = val
           break
  		end
  	end
  end
  puts "result #{result}"
  break if result.sum == num
  counter = counter + 1
end

puts "final result #{result}"

