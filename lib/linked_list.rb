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
      new_node = Node.new(data)
    while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    counter = 0
    current_node = @head
    until current_node == nil
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end
  # def count
  #   if @head.nil?
  #     count = 0
  #   else
  #     current_node = @head
  #     count = 1
  #   while current_node != nil
  #     current_node = current_node.next_node
  #     count +=1
  #   end
  #   count
  #   end
  # end

  def to_string
    current_node = @head
    bbox = []
    until current_node == nil
      bbox << current_node.data
      current_node = current_node.next_node
    end
      bbox.join(" ")
  end
end