class Stack
  def initialize(size)
  	@array = Array.new(size)
  	@top = -1
  end

  def isFull?
  	@top == (@array.size - 1)
  end

  def isEmpty?
  	@top == -1
  end

  def push(element)
  	return "Stack is Full" if isFull?
    @top = @top + 1
    @array[@top] = element
  end

  def pop()
  	return "Stack is Empty" if isEmpty?
    @top = @top - 1
  end

  def top()
  	return "Stack is Empty" if isEmpty?
  	@array[@top]
  end
end

class PrimeFactorization < Stack
   def prime_factors(num)
     number = num
     min = 2
     while (number!=1) do
       (min..num).each do |value|
  	     if number%value == 0
           push(value)
           min = value
           number = number/value
           break
  	     end
        end
     end
   end

   def display_factors()
   	factors = ""
     while @top != -1 do
     	factors = factors + "#{top()} "
        pop()
     end

     puts "Prime factors : #{factors}"
   end
end

obj = PrimeFactorization.new(20)
puts "Please enter the number corresponding to your choice:"
input_number = gets.to_i
obj.prime_factors(input_number)
obj.display_factors()



