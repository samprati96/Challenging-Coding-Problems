def initialise_game(m, n)
  game_grid = array = Array.new(m) { Array.new(n, 0) }
  (1..(m-2)).each do |row|
    (1..(n-2)).each do |col|
	   game_grid[row][col] = rand(0..1)
    end
  end
  game_grid
end

def alive_surrounding_cells(row, col, previous_generation)
  cells = previous_generation[row-1][col-1] + previous_generation[row-1][col] +
          previous_generation[row-1][col+1] + previous_generation[row][col-1] +
          previous_generation[row][col+1] + previous_generation[row+1][col-1] +
          previous_generation[row+1][col] + previous_generation[row+1][col+1]    
  cells
end

def next_gen_cell(current_cell, alive_surrounding_cells)
	if(current_cell == 0)
	  alive_surrounding_cells == 3 ? 1 : 0
	else
	  [2, 3].include?(alive_surrounding_cells) ? 1 : 0
	end
end

def all_dead(next_generation)
	matrix = []

	next_generation.each do |row|
		matrix << row.all?(0)
	end
	matrix.all?(true)
end

def generate_generations(game_grid, dimensions)
   previous_generation = game_grid
   genration = 1
   puts "Generation #{genration}:"
   puts (1..(dimensions[:m]-2)).map {|i| previous_generation[i][1..(dimensions[:n]-2)].join(' ')}
   loop do
      next_generation = Array.new(dimensions[:m]) { Array.new(dimensions[:n], 0) }
      genration += 1
      (1..(dimensions[:m]-2)).each do |row|
        (1..(dimensions[:n]-2)).each do |col|
	       alive_surrounding_cells = alive_surrounding_cells(row, col, previous_generation)
	       next_generation[row][col] = next_gen_cell(previous_generation[row][col], alive_surrounding_cells)
         end
      end
      puts "Generation #{genration}:"
      puts (1..(dimensions[:m]-2)).map {|i| next_generation[i][1..(dimensions[:n]-2)].join(' ')}

      break if all_dead(next_generation) || (previous_generation == next_generation)
      previous_generation = next_generation
   end
end

def invalid_dimensions?(m, n)
	m <= 0 || n <= 0 || !m.is_a?(Integer) || !n.is_a?(Integer)
end

def start_game
	puts "Please enter grid dimensions"
  input_dimensions = gets
  m = input_dimensions.split(' ')[0].to_i
  n = input_dimensions.split(' ')[1].to_i
  return puts "Please enter valid row and column values. Both must be greater than 0 and contain only Integers (no special characters allowed)." if invalid_dimensions?(m, n)
  game_grid = initialise_game(m+2, n+2)
  generate_generations(game_grid, {m: m+2, n: n+2})
end

def overview_of_game
	overview = "Overview of the Game of Life:
  The Game of Life, conceived by mathematician John Conway, is a cellular automaton game where cells can reproduce,
  vanish, or persist based on specific rules. Played on a grid of squares of arbitrary size, each cell interacts with its eight neighboring squares.

  The rules are as follows:
  
  1. **Survival:** Cells with two or three adjacent cells survive to the next generation.

  2. **Death:** Cells with at least four adjacent cells die due to overpopulation, and those with at most one adjacent cell die due to isolation.

  3. **Birth:** Empty squares (dead cells) adjacent to exactly three cells give birth to a new cell in the next generation.

  All births and deaths happen simultaneously during each generation.
  This zero-player game showcases how simple rules can lead to complex and evolving patterns in a grid-based world."
	puts overview
end

loop do
	puts "----------------------------"
	puts "Welcome to the Game of Life!"
	puts "----------------------------"
	puts "1. Overview of the Game"
	puts "2. Play the Game"
	puts "3. Exit"
	puts "Please enter the number corresponding to your choice:"
  num = gets

  case num.to_i
    when 1
      overview_of_game
    when 2
    	start_time = Time.now
      start_game
      end_time = Time.now
      difference_in_ms = (end_time - start_time) * 1000
      puts "Time difference in milliseconds: #{difference_in_ms} ms"
    when 3
      break
    else
      puts "Please enter valid number."
    end
end


