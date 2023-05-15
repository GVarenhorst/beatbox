class BeatBox
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  # Up until now, we have only been able to append and prepend a single node at a time. The LinkedList class hasn’t formatted the data it received, consequently, passing the string “deep bop dop” to append has resulted in one node created with data deep bop dop. With BeatBox as an extra layer, it can take care of properly formatting the data (eg: splitting the string) before passing it down to the LinkedList. This implementation results in three nodes appended to the list if we pass the string “deep bop dop” to BeatBox#append.

  # def append(string)
end