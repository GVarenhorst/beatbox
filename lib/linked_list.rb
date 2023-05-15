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

#   Now we have nodes and a LinkedList class that manages the list. Next step is to add the insert and prepend methods.

# prepend will add nodes to the beginning of the list.

# insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.

  def prepend(data)
    current_node = Node.new(data)
    current_node.next_node = @head
    @head = current_node
  end

  def insert(index, data)
    current_node = @head
    (index - 1).times do
    current_node = current_node.next_node
  end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

# Next is to add find, pop and includes? methods.

# find takes two parameters, the first indicates the first position to return and the second parameter specifies how many elements to return.

# includes? gives back true or false whether the supplied value is in the list.

# pop removes elements the last element from the list.

  def find(index, string_to_return)
    current_node = @head
    beats = []
    index.times do
      current_node = current_node.next_node
    end
    while current_node != nil && beats.length < string_to_return
    beats << current_node.data
    current_node = current_node.next_node
    end
  beats.join(" ")
  end

  def includes?(data)
    current_node = @head
    until current_node.data == data || current_node.next_node == nil
    current_node = current_node.next_node
    end
    current_node.data == data
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
    current_node = current_node.next_node
    end
    tail = current_node.next_node
    current_node.next_node = nil
    tail.data
  end
end