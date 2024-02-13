class Graph
  attr_accessor :nodes, :edges

  def initialize
    @nodes = []
    @edges = {}
  end

  def add_node(node)
    @nodes << node
    @edges[node] = {}
  end

  def add_edge(node1, node2, weight)
    @edges[node1][node2] = weight
    @edges[node2][node1] = weight
  end

  def dijkstra(start_node)
    distance = {}
    previous = {}
    unvisited = @nodes.dup

    @nodes.each do |node|
      distance[node] = Float::INFINITY
      previous[node] = nil
    end

    distance[start_node] = 0

    while !unvisited.empty?
      current = unvisited.min_by { |node| distance[node] }
      unvisited.delete(current)

      @edges[current].each do |neighbor, weight|
        alt = distance[current] + weight
        if alt < distance[neighbor]
          distance[neighbor] = alt
          previous[neighbor] = current
        end
      end
    end

    return distance, previous
  end

  def shortest_path(start_node, end_node)
    distance, previous = dijkstra(start_node)
    puts "previous #{previous}"
    path = []
    current = end_node

    while previous[current]
      path.unshift(current)
      current = previous[current]
    end

    path.unshift(start_node)
    return path, distance[end_node]
  end
end

# Example usage:

graph = Graph.new
graph.add_node("A")
graph.add_node("B")
graph.add_node("C")
graph.add_node("D")
graph.add_node("E")

graph.add_edge("A", "B", 4)
graph.add_edge("A", "C", 2)
graph.add_edge("B", "C", 5)
graph.add_edge("B", "D", 10)
graph.add_edge("C", "D", 3)
graph.add_edge("D", "E", 7)

start_node = "A"
end_node = "E"

path, distance = graph.shortest_path(start_node, end_node)
puts "Shortest path from #{start_node} to #{end_node}: #{path.join(" -> ")}"
puts "Total distance: #{distance}"
