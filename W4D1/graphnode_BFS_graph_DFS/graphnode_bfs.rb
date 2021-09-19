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

def bfs(starting_node, target_value, visited = Set.new())
  return nil if visited.include?(starting_node.val)
  my_queue = [starting_node]

  until my_queue.empty?
    ele = my_queue.shift
    visited.add(ele.val)
    return ele if ele.val == target_value
    ele.neighbors.each {|neighbor| my_queue << neighbor if visited.include?(neighbor.val)}
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

p bfs(a, "b")
p bfs(a, "f")

