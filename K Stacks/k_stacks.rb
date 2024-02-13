class Node
  attr_accessor :value, :previous_index

  def initialize(value, previous_index)
    @value = value
    @previous_index = previous_index
  end
end


class MultiStack
  attr_accessor :stack, :tops

  def initialize
    @stack = []
    @tops = Array.new(20, -1)
  end

  def push(stack_number, value)
    bold = "\e[1m"
    reset = "\e[0m"
    if stack.any?(nil)
      index_of_nil = stack.index(nil)
      stack[index_of_nil] = Node.new(value, tops[stack_number])
      tops[stack_number] = index_of_nil
    else
      stack << Node.new(value, tops[stack_number])
      tops[stack_number] = stack.size - 1
    end
    puts "#{bold}Pushed Successfully!#{reset}"
  end

  def display()
    bold = "\e[1m"
    reset = "\e[0m"
    # puts "#{bold}tops #{reset} #{tops}"
    return  "#{bold}Stack is Empty!#{reset}" if stack.empty?

    result = tops.each_with_index.select { |value, index| value != -1 }

    puts "____________________________________________________________________________"
    result.each do |top, stack_number|
      elements = "Stack #{stack_number} :["
      loop do
        node = stack[top]
        elements = elements + "#{node.value.to_s} "
        top = node.previous_index
        break if top == -1
      end
      puts elements + "]"
    end
    puts "____________________________________________________________________________"
  end

  def pop(stack_number)
    bold = "\e[1m"
    reset = "\e[0m"
    return false if tops[stack_number] == -1
    node = stack[tops[stack_number]]
    value = node.value
    stack[tops[stack_number]] = nil
    tops[stack_number] = node.previous_index
    value
  end
end

def show_menu
  puts "____________________________________________________________________________"
  bold = "\e[1m"
  reset = "\e[0m"
  puts "#{bold}Menu:#{reset}"
  puts "1. Display how multi stack works"
  puts "2. Push element to stack (Enter stack number and value)"
  puts "3. Pop element from stack (Enter stack number)"
  puts "4. Display stack"
  puts "5. Exit"
  puts "____________________________________________________________________________"
  print "Enter your choice: "
end

def multi_stack_description
  bold = "\e[1m"
  reset = "\e[0m"
  puts "#{bold}Description#{reset}"
  puts "Imagine you have multiple stacks, like a set of plates neatly stacked."
  puts "Now, picture each plate having a special tag with two pieces of information:"
  puts "  - what's written on the plate (that's the value)"
  puts "  - a note about the plate underneath (that's the previous plate's tag number)."
  puts
  puts "When you add a new plate, you write down its name, and you note the tag number"
  puts "of the plate right below it. This way, you're creating a chain of plates where"
  puts "each plate remembers the one right beneath it."
  puts
  puts "When you want to take a plate off the stack (pop), you look at the top plate,"
  puts "read its name, and then check the tag to find out what's beneath it. That's"
  puts "how you know which plate comes next."
  puts
  puts "This linked stack of plates is like a multi-stack. In your code, each plate is"
  puts "like a Node with a value (what's written on it) and a previous_index (the tag"
  puts "number of the plate below it). The stack is the entire set of plates, and tops"
  puts "is like a quick reference to the top plate of each stack."
  puts
  puts "So, when you 'push' a plate onto the stack, you're adding a new plate, noting"
  puts "the tag of the plate beneath it, and updating the quick reference to this new top"
  puts "plate. When you 'pop' a plate, you're taking the top plate, reading its name, and"
  puts "updating the quick reference to the plate right beneath it. The beauty is that you"
  puts "can have multiple such stacks (plates) all in one neat arrangement!"
end

multi_stack = MultiStack.new()

loop do
  show_menu
  choice = gets.chomp.to_i
  bold = "\e[1m"
  reset = "\e[0m"
  case choice
  when 1
    # Display how multi stack works
    multi_stack_description
  when 2
    # Push element to stack
    print "Enter stack number: "
    stack_number = gets.chomp.to_i
    print "Enter value: "
    value = gets.chomp
    multi_stack.push(stack_number, value)
  when 3
    # Pop element from stack
    print "Enter stack number: "
    stack_number = gets.chomp.to_i
    value = multi_stack.pop(stack_number)
    text = value ? "#{bold}Popped value: #{value} #{reset}" : "#{bold}Stack is Empty!#{reset}"
    puts text
  when 4
    # Display stack
    multi_stack.display
  when 5
    # Exit the program
    puts "#{bold}Exiting...#{reset}"
    break
  else
    puts "#{bold}Invalid choice. Please enter a valid option.#{reset}"
  end
end




