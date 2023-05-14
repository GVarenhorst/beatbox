require "./lib/linked_list"
require "./lib/node"

RSpec.describe Node do
  
  it "exists" do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has attributes and can append data" do
    list = LinkedList.new

    expect(list.head).to eq(nil)

    list.append("doop")
    # require 'pry'; binding.pry
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
  end

  it "can list nodes as a string" do

    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end

  
  it "can append multiple nodes" do

    list = LinkedList.new
    list.append("doop")
    
    expect(list.to_string).to eq("doop")
    
    list.append("deep")
    # require 'pry'; binding.pry

    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it "can prepend a node" do

    list = LinkedList.new
    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)

    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end


end
