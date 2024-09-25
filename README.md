# Ruby on Rails Projects

This repository contains various Ruby on Rails projects demonstrating different algorithms and problem-solving techniques. Each project focuses on a unique algorithm or concept, implemented with a web-based interface using Rails.

## Table of Contents

- [Projects Overview](#projects-overview)
  - [Decomposition of Three](#decomposition-of-three)
  - [Game of Life](#game-of-life)
  - [K Stacks](#k-stacks)
  - [PAL Sort](#pal-sort)
  - [Prime Factorization](#prime-factorization)
  - [Shortest Path](#shortest-path)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Projects Overview

### 1. Decomposition of Three
**Description:** This project explores different ways to decompose a number into three distinct parts that add up to the given number. The application provides an interface to input a number and displays all possible decompositions.

**Features:**
- Input validation for positive integers.
- Displays all valid decompositions.
- Interactive interface for user inputs.

### 2. Game of Life
**Description:** A simulation of Conway’s Game of Life. This project visually represents the cellular automaton game where cells live, die, or multiply based on a set of rules.

**Features:**
- Grid-based representation of cells.
- Start, pause, and reset controls for the simulation.
- Customizable grid size and initial configurations.

### 3. K Stacks
**Description:** Implementation of multiple stacks in a single array. This project demonstrates how to efficiently use a single array to manage multiple stacks, ideal for situations with limited memory.

**Features:**
- Create, push, and pop operations for multiple stacks.
- Visualization of stack states and operations.
- Error handling for overflow and underflow conditions.

### 4. PAL Sort
**Description:** A project that sorts an array in such a way that every adjacent pair forms a palindrome when concatenated. This interesting sorting algorithm is showcased through a user-friendly interface.

**Features:**
- Input array customization.
- Visual representation of sorting steps.
- Verifies the palindrome condition for adjacent elements.

### 5. Prime Factorization
**Description:** A web-based tool to compute and display the prime factorization of a given number. The project aims to provide an interactive and educational tool for understanding prime factorization.

**Features:**
- Input validation for positive integers.
- Step-by-step breakdown of the factorization process.
- Visual representation of the factor tree.

### 6. Shortest Path
**Description:** An implementation of the shortest path algorithms, such as Dijkstra’s or A*, for finding the shortest path between nodes in a graph. The project provides a visual interface to create a graph and find the shortest path.

**Features:**
- Interactive graph creation with nodes and edges.
- Visual representation of the shortest path calculation.
- Supports multiple algorithms for pathfinding.

## Setup and Installation

To run these projects locally, follow the steps below:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/rails-projects.git
   cd rails-projects
   ```

2. **Install Dependencies:**
   Make sure you have Ruby and Rails installed. Then, install the required gems:
   ```bash
   bundle install
   ```

3. **Setup Database:**
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Start the Server:**
   ```bash
   rails server
   ```
   Open your browser and go to `http://localhost:3000` to view the projects.

## Usage

- Each project is available as a separate route in the application.
- Navigate to `/decomposition_of_three`, `/game_of_life`, etc., to access the respective project.
- Use the interface to interact with the algorithms and view the results.

## Contributing

Contributions are welcome! If you have any improvements or additional features to suggest, feel free to open a pull request or raise an issue.

1. Fork the repository.
2. Create your feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Open a pull request.
