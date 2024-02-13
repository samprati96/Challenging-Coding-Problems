def swap(pal_tab, source, destination)
	char = pal_tab.delete_at(source)
	pal_tab.insert(destination, char)
end

def destination(char, max_size)
  case char
  when 'A'
    0
  when 'P'
    max_size
  else
    nil
  end
end

def sort_pal(pal_tab)
  pal_tab.each_with_index do |char, index|
    destination = destination(char, pal_tab.size - 1)
    swap(pal_tab, index, destination) if destination
  end
  pal_tab
end

def menu
   puts "\n\n\n"
   puts "*************************************************************************************************************"
   puts `tput bold` + "Menu:" + `tput sgr0`
   puts "*************************************************************************************************************"
   puts "1. Description of Sort_PAL"
   puts "2. Play and enter string"
   puts "3. Exit"
   puts "-------------------------------------------------------------------------------------------------------------"
   print "Enter your choice: "
end

def description
  puts "-------------------------------------------------------------------------------------------------------------"
  puts `tput bold` + "Sort_PAL Description:" + `tput sgr0`
  puts "Sorts the letters in the array PAL_TAB such that all 'P's appear first, followed by 'A's, and then 'L's."
  puts `tput bold` + "Constraints:" + `tput sgr0`
  puts "  - Each letter ('A', 'L', or 'P') is evaluated only once."
  puts "  - SWAP(PAL, i, j) is used only when necessary."
  puts "  - No extra space can be used by the algorithm."
  puts "  - The number of each letter cannot be counted." 
  puts "-------------------------------------------------------------------------------------------------------------"
end

loop do
  menu
  choice = gets.chomp.to_i

  case choice
  when 1
    description
  when 2
    print "Enter the string ending with '#': "
    input_string = gets.chomp.upcase
    pal_tab = input_string.chars
    if pal_tab.empty?
      puts "-------------------------------------------------------------------------------------------------------------"
      puts `tput bold` + "Please enter the valid string!" + `tput sgr0`
      puts "-------------------------------------------------------------------------------------------------------------"
      next
    end
    pal_tab.delete_at(pal_tab.size - 1)
    puts "-------------------------------------------------------------------------------------------------------------"
    puts `tput bold` + "Original PAL_TAB: #{pal_tab.join}" + `tput sgr0`
    sorted_pal_tab = sort_pal(pal_tab)
    puts `tput bold` + "Sorted PAL_TAB: #{sorted_pal_tab.join}" + `tput sgr0`
    puts "-------------------------------------------------------------------------------------------------------------"
  when 3
      puts "Exiting..."
      break
  else
  	 puts "-------------------------------------------------------------------------------------------------------------"
     puts `tput bold` + "Invalid choice. Please enter 1, 2, or 3." + `tput sgr0`
     puts "-------------------------------------------------------------------------------------------------------------"
  end
end

