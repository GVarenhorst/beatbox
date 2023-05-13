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
    # expect(list.count).to eq(1)
  end

  xit "can list nodes as a string" do

    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end

  xit "can append multiple nodes" do

    list = LinkedList.new
    
    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end
end
