class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def infinite_linked_list?(list)
    slow_runner = list.next_node
    fast_runner = list.next_node
  
    until slow_runner.nil?
      slow_runner = slow_runner.next_node
  
      slow_runner = slow_runner.next_node
      fast_runner = fast_runner.next_node
      
      return true if fast_runner == slow_runner
    end
    false
  end

  def print_values(list_node)
    return print "nil\n" if list_node.nil?

    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

puts node1.infinite_linked_list?(node3)






