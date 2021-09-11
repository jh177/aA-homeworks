class Stack
  # create ivar to store stack here!
  def initialize
    @stack = []
  end

  # adds an element to the stack
  def push(el)
    @stack << (el)
  end

  # removes one element from the stack
  def pop
    @stack.pop()
  end

  # returns, but doesn't remove, the top element in the stack
  def peek
    @stack[-1]
  end

end