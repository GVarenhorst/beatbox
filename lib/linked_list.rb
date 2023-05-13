class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
    while current_node.next_node != nil
        current_node = current_node.next_node
    end
      current_node.next_node = Node.new(data)
    end
  end

  def count
  if @head.nil?
    count = 0
  else
    count = 1
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      count +=1
    end
    count
    end 
  end

  # def to_string
  #   current_node = @head
  #   bbox = []
  #   until current_node == nil
  #     bbox << current_node.data
  #     current_node = current_node.next_node
  #   end
  #     bbox.join(" ")
  # end
end