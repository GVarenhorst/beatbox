class BeatBox
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    node_array = data.split(' ')
    node_array.map do |string|
      list.append(string)
    end
    data
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end

end