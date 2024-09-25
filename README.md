# Ruby Algorithm Projects

This repository contains a collection of Ruby scripts showcasing various algorithms and problem-solving techniques. Each project is implemented as a standalone `.rb` file, demonstrating different computational approaches and data structures.

## Table of Contents

- [Project Overview](#project-overview)
  - [Decomposition of Three](#decomposition-of-three)
  - [Game of Life](#game-of-life)
  - [K Stacks](#k-stacks)
  - [PAL Sort](#pal-sort)
  - [Prime Factorization](#prime-factorization)
  - [Shortest Path](#shortest-path)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Project Overview

### 1. Decomposition of Three
**Description:** This script computes all possible decompositions of a given number into three distinct parts whose sum equals the number. It’s useful for mathematical exploration and combinatorial problems.

**Features:**
- Accepts any positive integer as input.
- Outputs all valid decompositions in a readable format.

**Usage Example:**
```ruby
ruby decomposition_of_three.rb 9
# Output:
# [1, 2, 6]
# [1, 3, 5]
# [2, 3, 4]
```

### 2. Game of Life
**Description:** A Ruby implementation of Conway’s Game of Life. This program simulates the evolution of a grid-based system of cells according to simple rules, demonstrating the emergence of complex behavior from simple rules.

**Features:**
- Configurable grid size and initial state.
- Outputs the grid after each generation.

**Usage Example:**
```ruby
ruby game_of_life.rb
# Outputs grid states for each generation.
```

### 3. K Stacks
**Description:** Implementation of `k` stacks using a single array, showcasing an efficient way to manage multiple stacks with minimal memory overhead.

**Features:**
- Push and pop operations for multiple stacks.
- Handles overflow and underflow conditions gracefully.

**Usage Example:**
```ruby
ruby k_stacks.rb
# Outputs stack operations and current state.
```

### 4. PAL Sort
**Description:** Sorts an array such that adjacent elements, when concatenated, form a palindrome. This is a unique take on sorting that ensures special properties in the output array.

**Features:**
- Takes an array of strings as input.
- Outputs a palindrome-compatible sorted array.

**Usage Example:**
```ruby
ruby pal_sort.rb
# Outputs sorted array with palindrome properties.
```

### 5. Prime Factorization
**Description:** Computes and displays the prime factorization of a given number. This script breaks down any positive integer into its prime factors.

**Features:**
- Accepts any positive integer as input.
- Outputs prime factors in a formatted manner.

**Usage Example:**
```ruby
ruby prime_factorization.rb 84
# Output:
# 2^2 * 3^1 * 7^1
```

### 6. Shortest Path
**Description:** Implements shortest path algorithms (like Dijkstra's) for finding the shortest path between nodes in a graph. The script reads graph data and computes the shortest path for given nodes.

**Features:**
- Input flexibility for custom graphs.
- Outputs the shortest path and its cost.

**Usage Example:**
```ruby
ruby shortest_path.rb
# Outputs shortest path and total distance for given nodes.
```

## Setup and Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/ruby-algorithms.git
   cd ruby-algorithms
   ```

2. **Install Ruby:**
   Ensure you have Ruby installed. You can check your Ruby version with:
   ```bash
   ruby -v
   ```

3. **Install Dependencies (if any):**
   Some scripts may require additional gems. Run `bundle install` if a `Gemfile` is present, or manually install necessary gems using:
   ```bash
   gem install gem_name
   ```

## Usage

1. Navigate to the project directory.
2. Run the desired script by passing any required arguments. For example:
   ```bash
   ruby prime_factorization.rb 84
   ```
3. Follow the on-screen prompts or enter data as required by the script.

## Contributing

Contributions are welcome! If you have enhancements or new algorithms to add, feel free to fork the repository, create a new branch, and submit a pull request.

1. Fork the repository.
2. Create your feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Open a pull request.
