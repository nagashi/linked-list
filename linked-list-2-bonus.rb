class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def infinite_linked_list?(list)
    runner1 = list.next_node
    runner2 = list.next_node
    cycle = 0
  
    until runner1.nil?
      runner1 = runner1.next_node
      return false if runner1.nil?
  
      runner1 = runner1.next_node
      runner2 = runner2.next_node
      cycle += 1
      return "true in #{cycle} cycles" if runner1 == runner2
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






