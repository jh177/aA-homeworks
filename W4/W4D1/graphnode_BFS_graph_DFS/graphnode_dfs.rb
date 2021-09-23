class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def inspect
    { "value" => @val, "neighbors" => @neighbors}
  end
  
end

require "Set"

def dfs(starting_node, target_value, visited = Set.new())
  return nil if visited.include?(starting_node.val)
  return starting_node if starting_node.val == target_value

  print "#{starting_node.val} --> "
  visited.add(starting_node.val)

  starting_node.neighbors.each do |neighbor| 
    search_result = dfs(neighbor, target_value, visited)
    return search_result unless search_result.nil?
  end
  nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p dfs(a, "b")
p dfs(a, "f")