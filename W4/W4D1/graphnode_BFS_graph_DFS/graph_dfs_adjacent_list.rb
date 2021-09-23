require "Set"

def dfs(graph, target_value)
  visited = Set.new()
  graph.keys.each do |node|
    return node if node == target_value.to_sym
    _dfs(node, graph, target_value, visited)
  end
end

def _dfs(node, graph, target_value, visited)
  return nil if visited.include?(node.to_sym)
  return node if node.to_s == target_value

  print "#{node.to_s} --> "
  visited.add(node.to_sym)

  graph[node.to_sym].each do |neighbor| 
    search_result = _dfs(neighbor, graph, target_value, visited)
    return search_result unless search_result.nil?
  end
  nil
end


graph = {
  'a': ['b', 'c', 'e'],
  'b': [],
  'c': ['b', 'd'],
  'd': [],
  'e': ['a'],
  'f': ['e']
}

p dfs(graph, "b")
p dfs(graph, "f")
