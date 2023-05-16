class BeatBox
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  # Up until now, we have only been able to append and prepend a single node at a time. The LinkedList class hasn’t formatted the data it received, consequently, passing the string “deep bop dop” to append has resulted in one node created with data deep bop dop. With BeatBox as an extra layer, it can take care of properly formatting the data (eg: splitting the string) before passing it down to the LinkedList. This implementation results in three nodes appended to the list if we pass the string “deep bop dop” to BeatBox#append.

  def append(data)
    node_array = data.split(' ')
    node_array.map do |string|
      list.append(string)
    end
    data
  end

  # def count
  #   list.count
  # end

  #for append(data) method I want to split the string and run an enumerable (map_with_index) to separate the string, then assign each string to a new node (insert), starting with the head. The node count should be the same as the number of split strings.

end